Rails.application.routes.draw do
  resources :products
  devise_for :users
  get 'home/index'
  root to: "home#index"

  post 'products/:id', to: 'products#addproducttocart', as: 'addtocart'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
