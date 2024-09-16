Rails.application.routes.draw do
  devise_for :users
  root to: "customers#index"
  resources :customers do
    collection do
      get 'search'
    end
  end
end
