class ProductsController < ApplicationController

  def index

    @products = Product.all.order(created_at: :desc)
    # the render is implict
    # behind the scene, its doing:
    # render :index
  end

  def show
    @product = Product.find params[:id]
  end

end
