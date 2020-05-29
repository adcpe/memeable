Rails.application.routes.draw do
  root to: 'memes#index'
  resources :memes

  devise_for :users
  get '/my_profile', to: 'users#show'
  get '/categories', to: 'memes#categories'
end
