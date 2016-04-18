class ProductsController < ApplicationController
  def index
  end

  def new
    @product = Product.new
  end

  def create
    Product.create(title: create_params[:title],image1: create_params[:image1],image2: create_params[:image2],image3: create_params[:image3],catch_copy: create_params[:catch_copy],concept: create_params[:concept] ,user_id: current_user.id)
    redirect_to '/'
  end

  def show
    @product = Product.find(params[:id])
  end

  private
    def create_params
      params.require(:product).permit(:title,:image1,:image2,:image3,:catch_copy,:concept)
    end
end
