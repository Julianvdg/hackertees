Rails.application.routes.draw do
root "products#index"
resources :products, :shopping_carts, :order_items

get '/cart' => 'shopping_carts#index'
get '/cart/clear' => 'shopping_carts#clearCart'
get '/cart/clearitem/:id' => 'shopping_carts#clearItem'
get '/cart/decreaseitem/:id' => 'shopping_carts#decreaseItem'
get '/cart/increaseitem/:id' => 'shopping_carts#increaseItem'
get '/cart/:id' => 'shopping_carts#add'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
