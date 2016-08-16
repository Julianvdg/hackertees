class ProductsController < ApplicationController
  def index
    @products = Product.all
    @orderline = cart_order.order_lines.new
  end
end
