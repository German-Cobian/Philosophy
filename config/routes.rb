Rails.application.routes.draw do
  root 'articles#index'

  resources :users, only: [:new, :create]
  resources :sessions, only: [:new, :create, :destroy]
  resources :articles
  post 'articles/:id', to: 'articles#create'

  get '/signin' => 'sessions#new'
  post '/signin' => 'sessions#create'
  delete '/signout' => 'sessions#destroy'
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
