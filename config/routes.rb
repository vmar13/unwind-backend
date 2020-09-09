Rails.application.routes.draw do
  # get 'practice_times/index'
  # get 'practice_times/show'
  # get 'practice_times/new'
  # get 'practice_times/create'
  # get 'practice_times/edit'
  # get 'practice_times/update'
  # get 'practice_times/destroy'
  # get 'favorites/index'
  # get 'favorites/show'
  # get 'favorites/new'
  # get 'favorites/create'
  # get 'favorites/destroy'
  # get 'breathing_techniques/index'
  # get 'breathing_techniques/show'
  # get 'breathing_techniques/new'
  # get 'breathing_techniques/create'
  # get 'users/index'
  # get 'users/show'
  # get 'users/new'
  # get 'users/create'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  namespace :api do
    namespace :v1 do
    resources :users, only: [:create]
      post '/login', to: 'auth#create'
      get '/profile', to: 'users#profile'
    resources :breathing_techniques
    resources :favorites
    resources :practice_times
    end 
  end 
end
