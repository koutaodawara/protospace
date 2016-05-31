module LikesHelper
  def like_division
    @product.likes.select{ |like| like.user_id == like.user.id }.blank?
  end
end
