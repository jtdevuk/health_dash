Rails.application.routes.draw do
  devise_for :users
  resources :medications
  resources :appointments, only: [:index, :create]
  root "pages#dash"
end
