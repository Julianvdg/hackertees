class ShoppingCartsController < ApplicationController
  def add
    id = params[:id]
    #if the cart has already been created, use the existing cart. Else create a new cart
      if session[:cart] then
        cart = session[:cart]
      else
        session[:cart] = {}
        cart = session[:cart]
      end

    #if the product has already been added to the cart, increment the value. Else set the value to 1
      if cart[id] then
        cart[id] += 1
      else
        cart[id] = 1
      end

      redirect_to :action => :index
  end

  def clearCart
    session[:cart] = nil
    redirect_to :action => :index
  end

  def clearItem
      id = params[:id]
      cart = session[:cart]
      cart.delete(id)
      redirect_to :action => :index
  end

  def decreaseItem
      id = params[:id]
      cart = session[:cart]
      cart[id] -= 1
      redirect_to :action => :index
  end

  def increaseItem
      id = params[:id]
      cart = session[:cart]
      cart[id] += 1
      redirect_to :action => :index
  end

  def index
    #if there is a cart, pass it to the page for display. Else pass an empty value
    if session[:cart] then
      @cart = session[:cart]
    else
      @cart = {}
    end
  end

  def checkout
    @cart = session[:cart]
    checkout = Order.create
    checkout.total_price = 0
      @cart.each do | id, quantity|
        item = Product.find(id)
        subtotal = quantity.to_i * item.price.to_i
        OrderLine.create(:quantity => quantity, :unit_price => item.price, :sub_total => subtotal, :order_id  => checkout.id, :product_id  => id)
        update_price = (checkout.total_price += subtotal)
        Order.update(:total_price => update_price)
      end
      session[:cart] = nil
  end

end
