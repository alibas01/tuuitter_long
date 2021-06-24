Rails.application.routes.draw do
  
  root to: 'home#index'
  
  resources :posts
  resources :users

  namespace :admin do
    root to: 'dashboard#show'
    resources :users, except: [:edit, :update, :show]
    resources :posts, except: [:edit, :update, :show]
  end

  get 'home/index'
  get 'home/about'
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'
  get '/register' => 'users#new'
  post '/users' => 'users#create'
  get '/posts' => 'posts#new'
  post '/posts' => 'posts#create'
  get '/search' => 'home#search'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
