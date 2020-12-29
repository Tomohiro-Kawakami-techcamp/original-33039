Rails.application.routes.draw do
  devise_for :admin
  get "/admin" => "admin/posts#index"
  namespace :admin do
    resources :posts
  end
  devise_for :users
  root to: 'items#index'
  resources :items, only: [:index, :new, :create]
end
