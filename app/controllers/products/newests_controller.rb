class Products::NewestsController < ApplicationController
  def index
    @products = Product.includes(:user).order("created_at DESC")
  end
end
