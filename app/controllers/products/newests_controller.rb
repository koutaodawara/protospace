class Products::NewestsController < ApplicationController
  def index
    @products = Product.includes(:user).page(params[:page]).per(4).order("created_at DESC")
  end
end
