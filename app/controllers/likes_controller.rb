class LikesController < ApplicationController
   before_action :product_find, only: [:create, :destroy]

  def create
    @like = current_user.likes.create(params.permit(:product_id))
    render 'likes/_compile'
  end

  def destroy
    @like = @product.likes.find_by(params.permit(:user_id))
    @like.destroy
    @product.reload
    render 'likes/_compile'
  end

private

  def product_find
     @product = Product.eager_load(:comments, :user).find(params[:product_id])
  end
end
