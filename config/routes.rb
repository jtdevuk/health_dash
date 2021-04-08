Rails.application.routes.draw do
  devise_for :users
  resources :medications
  resources :appointments
  resources :records
  root "pages#dash"
end
