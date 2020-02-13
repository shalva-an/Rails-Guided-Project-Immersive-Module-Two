Rails.application.routes.draw do
  get '/users/signup', to: 'users#signup'
  get '/signin', to: 'sessions#signin'
  get '/signout', to: 'sessions#signout'
  root 'sessions#signin'
  
  resources :sessions, only: :create
  resources :reactions, only: :create
  resources :users, except: :new
  resources :pictures
  resources :tags
  resources :comments
  resources :followings

end
