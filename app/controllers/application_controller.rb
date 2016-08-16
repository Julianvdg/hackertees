class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :cart_order

def cart_order
  if !session[:order_id].nil?
    Order.find(session[:order_id])
  else
    Order.new
  end
end
end
