Rails.application.routes.draw do
  devise_for :users
  root 'homes#index' do
    resources :systems, only: [:destroy]
  end
  resources :systems do
  resources :stages
  resources :cells
  resources :viri
  end
end
