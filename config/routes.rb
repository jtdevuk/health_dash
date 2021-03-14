Rails.application.routes.draw do
  devise_for :users
  resources :medications
  resources :appointments, only: [:index, :create, :new]
  resources :records, only: [:index, :create, :new, :show]
  root "pages#dash"
end
