Rails.application.routes.draw do
  get 'user_profiles/new'

root "products#index"
resources :products, :shopping_carts, :order_items, :user_profiles
devise_for :users

get '/cart' => 'shopping_carts#index'
get '/cart/clear' => 'shopping_carts#clearCart'
get '/cart/clearitem/:id' => 'shopping_carts#clearItem'
get '/cart/decreaseitem/:id' => 'shopping_carts#decreaseItem'
get '/cart/increaseitem/:id' => 'shopping_carts#increaseItem'
get '/cart/checkout' => 'shopping_carts#checkout'
<<<<<<< c0d9d3d4573e561ce543c152b9f269d501fab16d
get '/cart/checkout/confirmorder' => 'orders#confirmorder' 
=======
get '/cart/checkout/confirmorder' => 'shopping_carts#confirmorder'
>>>>>>> Add confirmorder route
get '/cart/:id' => 'shopping_carts#add'
    
    
get 'userprofile/new' => 'user_profiles#new'
post 'userprofile' => 'user_profiles#create'




end
