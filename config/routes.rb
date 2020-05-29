Rails.application.routes.draw do
  resources :memes

  devise_for :users
  root to: 'home#index'
  get '/my_profile', to: 'users#show'
  # resources :users, only: :show
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
