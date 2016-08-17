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
<<<<<<< 250e54d370a9d759dbfa7ff2532427fa082d3bd1
<<<<<<< c0d9d3d4573e561ce543c152b9f269d501fab16d
get '/cart/checkout/confirmorder' => 'orders#confirmorder' 
=======
get '/cart/checkout/confirmorder' => 'shopping_carts#confirmorder'
>>>>>>> Add confirmorder route
=======
get '/cart/checkout/confirmorder' => 'orders#confirmorder' 
>>>>>>> Add confirm_order viewtemplate Add user login check to checkout page
get '/cart/:id' => 'shopping_carts#add'
    
    
get 'userprofile/new' => 'user_profiles#new'
post 'userprofile' => 'user_profiles#create'




end
