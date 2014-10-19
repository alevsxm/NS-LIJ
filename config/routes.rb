Rails.application.routes.draw do

  root 'medical_categories#index'

  resources :medical_categories
  get '/medical_categories/:id/pico_questions' => 'medical_categories#specific_pico_questions', :as => :specific_pico_questions
  get '/medical_categories/:id/mini_lectures' => 'medical_categories#specific_mini_lectures', :as => :specific_mini_lectures
  get '/medical_categories/:id/review_articles' => 'medical_categories#specific_review_articles', :as => :specific_review_articles

  resources :users
  resources :pico_questions
  resources :mini_lectures
  resources :review_articles

  get 'search'  => 'search#search',  :as => :search
  get 'results' => 'search#results', :as => :results

  #Sessions
  get '/login'     => 'sessions#new'
  post '/sessions' => 'sessions#create'
  get '/logout'    => 'sessions#destroy'

end
