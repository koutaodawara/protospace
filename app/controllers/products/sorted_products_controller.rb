class Products::SortedProductsController < ApplicationController
  def index
    @products = Product.includes(:user).page(params[:page]).per(5).order('like_count DESC')
  end
end
