Rails.application.routes.draw do
  root to: 'memes#index'
  resources :memes
  post '/comments/new', to: 'comments#create'
  get '/popular', to: 'memes#popular'
  # Votes
  post '/votes/new', to: 'votes#create'
  post '/votes/unvote', to: 'votes#unvote'

  devise_for :users
  get '/my_profile', to: 'users#show'
  get '/categories', to: 'memes#categories'
end
