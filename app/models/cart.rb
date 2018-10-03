class Cart < ActiveRecord::Base

  @cart = []

  def add_to_cart(item)
    @cart << item
  end

end
