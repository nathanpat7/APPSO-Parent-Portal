Rails.application.routes.draw do
  get 'home/index'

  # register routes
  get 'register' => 'registration#index'
  post 'register' => 'registration#create'

  # login routes
  get 'login' => 'login#index'
  post 'login' => 'login#validate'


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
end
