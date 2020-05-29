Rails.application.routes.draw do
  root to: 'memes#index'
  resources :memes
  post '/comments/new', to: 'comments#create'

  devise_for :users
  get '/my_profile', to: 'users#show'
end
