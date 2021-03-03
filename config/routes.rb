Rails.application.routes.draw do
  devise_for :users
  resources :medications
  root "pages#dash"
end
