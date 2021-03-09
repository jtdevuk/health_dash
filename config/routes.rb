Rails.application.routes.draw do
  devise_for :users
  resources :medications
  resources :appointments, only: [:index]
  root "pages#dash"
end
