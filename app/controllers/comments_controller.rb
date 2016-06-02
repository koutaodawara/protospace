class CommentsController < ApplicationController
  def create
    @product = Product.find(params[:product_id])
    Comment.create(comment_permit)
  end

  private

  def comment_permit
    params.require(:comment).permit(:text, :product_id, :user_id)
  end
end
