Rails.application.routes.draw do
  resources :users, only: [:index, :show]
  resources :meetings do
    resources :messages, only: [:index, :new, :create]
  end
  resource :profile, only: [:edit, :show, :update]
  root to: 'users#index'
end
