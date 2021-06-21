Rails.application.routes.draw do
  resources :posts
  resources :users
  get 'home/index'
  root 'home#index'
  get 'home/about'
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'
  get '/register' => 'users#new'
  post '/users' => 'users#create'
  get '/posts' => 'posts#new'
  post '/posts' => 'posts#create'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
