Rails.application.routes.draw do

  # root 'application#index'
  root 'medical_categories#index'

  resources :medical_categories
  get '/medical_categories/:id/pico_questions' => 'medical_categories#specific_pico_questions', :as => :specific_pico_questions
  get '/medical_categories/:id/mini_lectures' => 'medical_categories#specific_mini_lectures', :as => :specific_mini_lectures

  resources :users
  resources :pico_questions
  resources :mini_lectures

  #Sessions
  get '/login'     => 'sessions#new'
  post '/sessions' => 'sessions#create'
  get '/logout'    => 'sessions#destroy'

end
