class ProductsController < ApplicationController
  def index
  end

  def new
    @product= Product.new
  end

  def create
    @product = current_user.products.new(create_params)
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
    def create_params
      params.require(:product).permit(:title,:image1,:image2,:image3,:catch_copy,:concept,:user_id)
    end
end
