Rails.application.routes.draw do
  resources :posts
  devise_for :users
  root 'posts#index'
  get '/my-post', to: 'posts#get_my_list_posts'
  get 'users/:id', to: 'users#show'
  get 'users', to: 'users#index'
end
