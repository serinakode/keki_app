Rails.application.routes.draw do
  
  # get 'pages/home'
  root 'pages#home'
  get '/my_orders', to: "orders#my_orders"
  get '/contact_us', to: "pages#contact_us"
  
  resources :charges
  resources :orders
  resources :products do
    member do 
      # /product/1/order
      get :order
      post :charge
    end
  end

  resources :profiles
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
