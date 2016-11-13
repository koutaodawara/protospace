class ProductsController < ApplicationController
  before_action :product_find, except: [:new,:create]

  def new
    @product= Product.new
    @product.pictures.build
    @tags = ActsAsTaggableOn::Tag.most_used(20)
  end

  def create
    @product = current_user.products.new(product_params)
    @product.pictures.build if @product.pictures.blank?
    if @product.save
      redirect_to root_path
    else
      flash.now[:notice] = "保存できませんでした"
      render new_product_path
    end
  end

  def show
      @comments = @product.comments.includes(:user)
      @comment = Comment.new(product_id: @product.id)
      @tags = @product.tags
  end

  def edit
    @main_img = @product.pictures.main
    @sub_img = @product.pictures.sub
  end

  def update
    if @product.update(product_params)
       redirect_to root_path
    else
      render :edit
    end
  end

  def destroy
      @product.destroy
      redirect_to root_path
  end


  private
    def product_params
      params.require(:product).permit(:title,:catch_copy,:concept, pictures_attributes: [:id,:image,:status,:product_id]).merge(tag_list: params[:product][:tag_list])
    end

    def product_find
      @product =Product.find(params[:id])
    end
end
