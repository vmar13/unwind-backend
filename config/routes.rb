Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
    resources :users
    post '/login', to: 'auth#create'
    get '/profile', to: 'users#profile'

    resources :breathing_techniques
    resources :favorites
    resources :practice_times
    end 
  end 
end
