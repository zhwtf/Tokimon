Rails.application.routes.draw do
 
  get  '/signup',  to: 'trainers#new'
  post '/signup',  to: 'trainers#create'

  root 'trainers#index'

  resources :trainers

  resources :tokimons


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
