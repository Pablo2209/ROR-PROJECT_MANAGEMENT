Rails.application.routes.draw do
  resources :banks
  resources :requests
  resources :technicians
  resources :engineers
  resources :projects
  resources :charges, only:[:index, :new, :create]
  get  "/payu/response", to: "payu#result"
  post "/payu/confirmation", to: "payu#confirmation"
  root "home#index"
  devise_for :users, controllers: { omniauth_callbacks: "users/omniauth_callbacks"}
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
