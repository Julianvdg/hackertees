class OrdersController < ApplicationController
<<<<<<< 250e54d370a9d759dbfa7ff2532427fa082d3bd1
<<<<<<< 52a553c0bd3f6c8c04b1beadbf5e9c09d5ec0cee
=======
>>>>>>> Add confirm_order viewtemplate Add user login check to checkout page
  def confirmorder
    #get session cart data and store it in an instance variable
    @cart = session[:cart]
    #create and empty order and assign it to a variable (to use the id when creating an orderline)
    checkout = Order.create
    #set total price to 0 in order to increment it with the orderline subtotal values
    checkout.total_price = 0
    #start loop to add session cart to orderlines
      @cart.each do | id, quantity|
        #get the product that belongs to the corresponding id
        item = Product.find(id)
        #create a variable in which the price * quantity is stores, to use when creating an order line
        subtotal = quantity.to_i * item.price.to_i
        #create the orderline with all required values. Here we use the checkout variable to store the order id to which the orderlien belongs
        OrderLine.create(:quantity => quantity, :unit_price => item.price, :sub_total => subtotal, :order_id  => checkout.id, :product_id  => id)
        #create variable in which we store the incremented total_price of the order
        update_price = (checkout.total_price += subtotal)
        #update the price of the order
        Order.update(:total_price => update_price)
      end
      #clear the shoppingcart
      session[:cart] = nil
  end
<<<<<<< 250e54d370a9d759dbfa7ff2532427fa082d3bd1
=======
>>>>>>> Generate orders_controller
=======
>>>>>>> Add confirm_order viewtemplate Add user login check to checkout page
end
