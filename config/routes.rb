Rails.application.routes.draw do

root "products#index"
resources :products, :shopping_carts, :order_items, :user_profiles
devise_for :users

get '/cart' => 'shopping_carts#index'
get '/cart/clear' => 'shopping_carts#clearCart'
get '/cart/clearitem/:id' => 'shopping_carts#clearItem'
get '/cart/change_quantity/:id' => 'shopping_carts#change_quantity'
get '/cart/checkout' => 'shopping_carts#checkout'
get '/cart/checkout/confirmorder' => 'orders#confirmorder'
get '/cart/:id' => 'shopping_carts#add'
get 'user_profiles/new'

end
