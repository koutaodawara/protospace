class CommentsController < ApplicationController
  def create
    @product = Product.find(params[:product_id])
    @comments = Comment.includes(:product)
    current_user.comments.create(comment_permit)
  end

  private

  def comment_permit
    params.require(:comment).permit(:text, :product_id, :user_id)
  end
end
