Rails.application.routes.draw do

  resources :medical_categories

  root 'application#index'

  resources :users

  resources :pico_questions

  resources :mini_lectures

  #Sessions
  get '/login'     => 'sessions#new'
  post '/sessions' => 'sessions#create'
  get '/logout'    => 'sessions#destroy'
  
end
