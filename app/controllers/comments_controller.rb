class CommentsController < ApplicationController
  def create
    @product = Product.find(params[:product_id])
    current_user.comments.create(comment_permit)
  end

  private

  def comment_permit
    params.require(:comment).permit(:text).merge(product_id: @product.id)
  end
end
