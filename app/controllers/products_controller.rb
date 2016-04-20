class ProductsController < ApplicationController
  def index
  end

  def new
    @product= Product.new(user_id: current_user.id)
  end

  def create
    @product = Product.new(create_params)
     if @product.save
      redirect_to "/"
    else
      render 'new'
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
