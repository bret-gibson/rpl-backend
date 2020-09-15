Rails.application.routes.draw do
  resources :reservations
  resources :users
  post '/login', to: 'auth#create'
  get '/decode_token', to: 'users#profile'
   #given a token, find the authenticated user
end
