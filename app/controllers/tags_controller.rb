class TagsController < ApplicationController

  def index
    @tags = ActsAsTaggableOn::Tag.most_used(20)
  end

  def show
    @products = Product.tagged_with(@tag).eager_load(:user).page(params[:page]).per(5).order('like_count DESC')
    @tag = ActsAsTaggableOn::Tag.find_by(name: params[:name])
  end
end
