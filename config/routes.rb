Rails.application.routes.draw do
  
  # get 'pages/home'
  root 'pages#home'
  get '/my_orders', to: "orders#my_orders", as: "my_orders"

  resources :orders
  resources :products
  resources :profiles
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
