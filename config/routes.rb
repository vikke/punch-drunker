Rails.application.routes.draw do
  get '/login', to: 'sessions#new'
  get '/auth/:provider/callback', to: 'sessions#create'

  resources :punches
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
