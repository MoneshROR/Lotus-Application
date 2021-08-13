Rails.application.routes.draw do
  root "customers#index"

  resources :customers do
    resources :machines
  end
  resources :employees do
    resources :machines
  end
#  resources :machines 

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
