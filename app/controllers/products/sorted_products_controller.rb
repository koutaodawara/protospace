class Products::SortedProductsController < ApplicationController
  def index
    @products = Product.includes(:user).order('like_count DESC').limit(5)
  end
end
