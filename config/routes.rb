Rails.application.routes.draw do
  get 'home/index'
  resources :technicians
  resources :engineers
  resources :projects
  devise_for :users
  
  root "projects#index"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
