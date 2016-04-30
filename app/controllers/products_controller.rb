class ProductsController < ApplicationController
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
      render new_product_path
    end
  end

  def show
    @product = Product.find(params[:id])
  end

  private
    def product_params
      params.require(:product).permit(:title,:catch_copy,:concept, pictures_attributes: [:image,:status,:product_id])
    end
end
