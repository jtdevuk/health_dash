Rails.application.routes.draw do
  devise_for :users
  root "pages#dash"
end
