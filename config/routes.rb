Rails.application.routes.draw do
  resources :memes

  devise_for :users
  root to: 'home#index'
  get '/my_profile', to: 'users#show'
end
