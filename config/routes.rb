Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      # get '/users/stay_logged_in', to: 'users#stay_logged_in'
      # post '/login', to: 'users#login'
      # post 'users/login', to: 'auth#create'
      # get 'users/profile', to: 'users#profile'

    resources :users
    post '/login', to: 'auth#create' #sign up?
    get '/profile', to: 'users#profile'
    resources :breathing_techniques
    resources :favorites
    resources :practice_times
    end 
  end 
end
