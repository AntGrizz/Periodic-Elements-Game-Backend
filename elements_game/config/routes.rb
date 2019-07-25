Rails.application.routes.draw do
  resources :users
  resources :scores
  post "users/login", to: "auth#create"
  get '/profile', to: 'users#profile'
end
