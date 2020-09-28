Rails.application.routes.draw do
  devise_for :users
  resources :countries, only: [:index,:show] do
    resources :events, only: [:new, :create, :show] 
  end
  resources :users, only: :show
  root to: "countries#index"
end
