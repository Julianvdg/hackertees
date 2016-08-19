class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :set_cart

  def set_cart
    if session[:cart] then
      @cart = session[:cart]
    else
      @cart = {}
    end
  end
end
