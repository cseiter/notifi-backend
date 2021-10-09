Rails.application.routes.draw do
  resources :tickets do
    resources :comments
  end
  resources :owners
  resources :users
  resources :comments
  resources :statuses
  resources :stations
  resources :devices
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
