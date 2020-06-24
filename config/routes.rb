Rails.application.routes.draw do
  get 'messages/index'
  root "messages#index"
  resources :users, only: [:edit, :update]
  resources :rooms, only: [:new, :create]
end
