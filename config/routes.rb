Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
    resources :users
      get '/users/stay_logged_in', to: 'users#stay_logged_in'
      post '/login', to: 'users#login'
    resources :breathing_techniques
    resources :favorites
    resources :practice_times
    end 
  end 
end
