class LikesController < ApplicationController
   before_action :product_find, only: [:create, :destroy]

  def create
    @like = current_user.likes.create(argument)
  end

  def destroy
    @like = current_user.likes.find_by(argument)
    @like.destroy
  end


private
  def argument
    params.permit(:product_id)
  end

  def product_find
     @product = Product.find(params[:product_id])
  end
end
