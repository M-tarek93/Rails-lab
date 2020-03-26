Rails.application.routes.draw do
  resources :users, only: [:new, :create]
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  post 'logout', to: 'sessions#logout'
  get 'welcome', to: 'sessions#welcome'
  get 'authorized', to: 'sessions#page_requires_login'
  resources :comments
  resources :posts
  get 'myposts', to: 'posts#myPosts'
  root :to => "posts#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
