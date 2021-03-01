Rails.application.routes.draw do
  get 'pages/dash'
  devise_for :users
  root "pages#dash"
end
