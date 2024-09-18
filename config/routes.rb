Rails.application.routes.draw do
  devise_for :users
  root to: "customers#index"
  resources :customers do
    collection do
      get 'search'
    end
    resources :dailies, only: :create
  end
  resources :users, only: :show
end
