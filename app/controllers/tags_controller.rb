class TagsController < ApplicationController

  def index
    @tags = ActsAsTaggableOn::Tag.most_used(20)
  end

  def show
    @tags = Product.tagged_with(ActsAsTaggableOn::Tag.find(params[:id]))
    @tag = ActsAsTaggableOn::Tag.find(params[:id]).name
  end
end
