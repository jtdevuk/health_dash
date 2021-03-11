Rails.application.routes.draw do
  devise_for :users
  resources :medications
  resources :appointments, only: [:index, :create, :new]
  root "pages#dash"
end
