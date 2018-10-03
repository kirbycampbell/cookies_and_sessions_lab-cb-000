class ProductsController < ApplicationController

  def index
    @products = Product.all
  end

  def add
    @product = Product.new(product_params)
  end

  def create
    @product = Product.new(product_params)
    if @product.save

      redirect_to @product
    else
      render :add
    end
  end


  private

  def product_params
    params.require(:products).permit(:name)
  end

end
