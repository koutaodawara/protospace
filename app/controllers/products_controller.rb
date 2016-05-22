class ProductsController < ApplicationController
  before_action :product_find, only: [:show,:edit,:update,:destroy]
  def index
    @products = Product.order("created_at DESC")
  end

  def new
    @product= Product.new
    @product.pictures.build
  end

  def create
    @product = current_user.products.new(product_params)
    if @product.save
      redirect_to root_path
    else
      flash.now[:notice] = "保存できませんでした"
      render new_product_path
    end
  end

  def show
  end

  def edit
  end

  def update
    if @product.update(product_params)
       redirect_to root_path
    else
      render :edit
    end
  end

  def destroy
      @product.destroy
      redirect_to root_path
  end


  private
    def product_params
      params.require(:product).permit(:title,:catch_copy,:concept, pictures_attributes: [:id,:image,:status,:product_id])
    end

    def product_find
      @product =Product.find(params[:id])
    end
end
