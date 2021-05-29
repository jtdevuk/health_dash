Rails.application.routes.draw do
  devise_for :users
  root "pages#dash"
  resources :medications
  resources :appointments do
    get "/letter", to: "appointments#letter"
  end
  resources :records
end
