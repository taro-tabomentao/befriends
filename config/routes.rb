Rails.application.routes.draw do
  devise_for :users
  resources :countries, only: :index
  root to: "countries#index"
end
