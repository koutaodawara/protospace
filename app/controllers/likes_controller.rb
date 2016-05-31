class LikesController < ApplicationController
   before_action :product_find, only: [:create, :destroy]

  def create
    @like = current_user.likes.create(like_params)
    render 'likes/_compile'
  end

  def destroy
    @like = current_user.likes.find_by(like_params)
    @like.destroy
    render 'likes/_compile'
  end


private
  def like_params
    params.permit(:product_id)
  end

  def product_find
     @product = Product.find(params[:product_id])
  end
end
