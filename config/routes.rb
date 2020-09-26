Rails.application.routes.draw do
  resources :countries, only: :index
  root to: "countries#index"
end
