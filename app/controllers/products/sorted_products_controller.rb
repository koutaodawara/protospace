class Products::SortedProductsController < ApplicationController
    before_action :authenticate_user!, except: :index
  def index
    @products = Product.includes(:user).page(params[:page]).per(5).order('like_count DESC')
  end
end
