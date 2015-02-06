Podcast::Application.routes.draw do

  get "sessions/new"
  get "sessions/create"
  get "admins/new"
  get "admins/create"
  resources :episodes
  resources :admins, only: [:new, :create]
  root to: 'landing#index'
end
