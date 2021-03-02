Rails.application.routes.draw do
  get 'medication/overview'
  devise_for :users
  root "pages#dash"
  get "/medication", to: "medication#overview"
end
