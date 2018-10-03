class ProductsController < ApplicationController

  def index
    @products = Product.all
  end

  def add
    @product = Product.new(product_params)
  end


  private

  def product_params
    params.require(:products).permit(:name)
  end

end
