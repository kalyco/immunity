Rails.application.routes.draw do
  root 'systems#new'
  resources :systems do
  resources :stages
  resources :cells
  resources :viri
  end
  devise_for :users
end
