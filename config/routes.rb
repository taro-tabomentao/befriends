Rails.application.routes.draw do
  devise_for :users
  resources :countries, only: [:index,:show]
  resources :events do
    resources :user_events, only: :create
    resources :event_comments, only: [:new, :create]
    collection do
      get 'search'
    end
  end
  resources :articles do
    resources :comments, only: [:new, :create]
    collection do
      get 'search'
    end
  end
  resources :questions do
    resources :answers, only: [:new, :create]
    collection do
      get 'search'
    end
  end
  resources :users, only: [:show, :edit, :update]
  root to: "countries#index"
end
