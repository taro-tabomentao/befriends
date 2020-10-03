Rails.application.routes.draw do
  devise_for :users
  resources :countries, only: [:index,:show]
  resources :events do
    resources :user_events, only: :create
  end
  resources :articles do
    resources :comments, only: [:new, :create]
  end
  resources :questions do
    resources :answers, only: [:new, :create]
  end
  resources :users, [only: :show. :edit, :update]
  root to: "countries#index"
end
