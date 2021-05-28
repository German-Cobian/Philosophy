Rails.application.routes.draw do
  root 'categories#index'
  
  resources :users, only: [:new, :create]
  resources :sessions, only: [:new, :create, :destroy]
  resources :articles
  resources :categories
  resources :votes

  resources :articles do
    resources :comments, only: [:index, :create]
  end

  get 'votes/create'
  get 'votes/destroy'

  get '/signin' => 'sessions#new'
  post '/signin' => 'sessions#create'
  get '/signout' => 'sessions#destroy', as: 'signout'
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
