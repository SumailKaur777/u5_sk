# app/controllers/products_controller.rb
class ProductsController < ApplicationController
  def index
    @products = Product.includes(:category).all
  end
  def show
    @product = Product.find(params[:id])
  end
  
  # Other controller actions...
end
