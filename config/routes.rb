Rails.application.routes.draw do
  get 'shopping_carts/show'

  get 'order_lines/create'

  get 'order_lines/update'

  get 'order_lines/destroy'

  get 'order_items/create'

  get 'order_items/update'

  get 'order_items/destroy'

  get 'products/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
