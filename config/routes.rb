Rails.application.routes.draw do
  root 'homes#index'
  resources :systems do
  resources :stages
  resources :cells
  resources :viri
  end
  devise_for :users
end
