class TagsController < ApplicationController

  def index
    @tags = ActsAsTaggableOn::Tag.most_used(20)
  end

  def show
    @tags = Product.tagged_with(ActsAsTaggableOn::Tag.find(params[:id])).page(params[:page]).per(5).order('like_count DESC')
    @tag = ActsAsTaggableOn::Tag.find(params[:id])
  end
end
