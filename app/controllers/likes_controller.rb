class LikesController < ApplicationController

  def create
    @like = current_user.likes.create(product_id: params[:product_id])
    @product = Product.find(params[:product_id])
  end

  def destroy
    @like = current_user.likes.find_by(product_id: params[:product_id])
    @product = Product.find(params[:product_id])
    @like.destroy
  end
end
