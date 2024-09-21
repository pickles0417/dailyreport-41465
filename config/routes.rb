Rails.application.routes.draw do
  devise_for :users
  root to: "customers#index"
  resources :customers do
    collection do
      get 'search'
    end
    resources :dailies, only: [:index, :new, :create ]
  end
  resources :users, only: :show
end
