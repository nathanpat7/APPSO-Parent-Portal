Rails.application.routes.draw do
  resources :events
  resources :officer_notes
  resources :attendances
  resources :answers
  resources :members
  resources :questions
  get 'home/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
end
