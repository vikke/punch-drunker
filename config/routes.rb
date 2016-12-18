Rails.application.routes.draw do
  root to: 'sessions#new'

  get '/login', to: 'sessions#new'
  get '/logout', to: 'sessions#destroy'
  get '/auth/:provider/callback', to: 'sessions#create'
  get '/regen', to: 'users#regenerate_token'

  resources :punches
  resources :users
end
