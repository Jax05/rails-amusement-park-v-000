Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'application#welcome'

  get '/signup', to: 'users#new'
  get '/signin', to: 'sessions#new'
  # get '/signout', to: 'sessions#delete'

  resources :users, :sessions
end
