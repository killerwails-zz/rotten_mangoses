Podcast::Application.routes.draw do

  get "sessions/new"
  get "sessions/create"
  get "admins/new"
  get "admins/create"
  root to: 'landing#index'
  resources :sessions, only: [:new, :create, :destroy]
  resources :admins, only: [:new, :create]
  resources :episodes do
    resources :suggeestions, only:[:new,:create]
  end
  
end

