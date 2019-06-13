Rails.application.routes.draw do
  root to: 'product_shops#index'

  resources :product_shops, only: :index
end
