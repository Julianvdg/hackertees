Rails.application.routes.draw do
root "products#index"
resources :products, :shopping_carts, :order_items


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
