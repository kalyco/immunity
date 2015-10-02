Rails.application.routes.draw do
  root 'homes#index' do
    resources :systems, only: [:destroy]
  end
  resources :systems do
  resources :innates, only: [:index]
  resources :stages
  resources :cells
  resources :viri
  resources :turn
  resources :vaccinations, only: [:index]
  end
  devise_for :users
  resources :users, only: [:index, :show, :update]
end
