Rails.application.routes.draw do
  devise_for :users
  resources :medications
  resources :appointments, only: [:index, :create, :new]
  resources :records
  root "pages#dash"
end
