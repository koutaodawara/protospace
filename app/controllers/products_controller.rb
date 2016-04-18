class ProductsController < ApplicationController
  def index
  end

  def new
    @product = Product.new
  end

  def create
    current_user.products.create(create_params)
    redirect_to '/'
  end

  def show
    @product = Product.find(params[:id])
  end

  private
    def create_params
      params.require(:product).permit(:title,:image1,:image2,:image3,:catch_copy,:concept).merge(user_id: params[:user_id])
    end
end
