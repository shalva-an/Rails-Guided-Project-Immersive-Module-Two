Rails.application.routes.draw do
  get 'followings/show'
  get '/users/signup' => 'users#signup'
  get '/signin' => 'sessions#signin'
  get '/signout' => 'sessions#signout'
  root 'sessions#signin'
  
  resources :sessions, only: :create
  resources :users, except: :new
  resources :pictures
  resources :tags
  resources :comments

end
