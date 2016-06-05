class Products::NewestsController < ApplicationController
  def index
    @products = Product.includes(:user).page(params[:page]).per(5).order("created_at DESC")
end
