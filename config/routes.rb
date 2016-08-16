Rails.application.routes.draw do
  devise_for :users
root "products#index"
resources :products, :shopping_carts, :order_items

get '/cart' => 'shopping_carts#index'
get '/cart/clear' => 'shopping_carts#clearCart'
get '/cart/:id' => 'shopping_carts#add'
get '/cart/clearitem/:id' => 'shopping_carts#clearItem'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
