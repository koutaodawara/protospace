class UsersController < ApplicationController
  before_action :user_find, only: [:show, :edit]

  def show
    @products = @user.products.page(params[:page]).per(5).order('like_count DESC')
  end

  def edit
  end

  def update
    current_user.update(current_user_params)
    redirect_to ""
  end

private
  def current_user_params
    params.require(:user).permit(:email, :members, :profile, :works, :nickname, :avatar)
  end

  def user_find
      @user = User.find(params[:id])
  end
end
