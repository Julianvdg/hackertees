class OrderLinesController < ApplicationController
  def create
    @order = cart_order
    @orderline = @order.order_lines.new(order_line_params)
    @order.save
    session[:order_id] = @order.id

  end

  def update
  end

  private

  def order_line_params
    params.require(:order_line).permit(:quantity, :product_id)
  end
end
