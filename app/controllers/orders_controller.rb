class OrdersController < ApplicationController
  def confirmorder
  #  def checkout
      #get session cart data and store it in an instance variable
      @cart = session[:cart]

      @order = Order.create(user_id: current_user.id)

      @cart.each do | id, quantity|
      @order.order_lines.new(product_id: id, quantity: quantity)
      @order.save
      end
        #clear the shoppingcart
        session[:cart] = nil
  #  end
  end
end
