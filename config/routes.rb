Rails.application.routes.draw do
  get 'secret_code/index'
  post 'secret_code/create'
  root 'secret_code#index'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
