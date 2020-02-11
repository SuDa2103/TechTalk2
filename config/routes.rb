Rails.application.routes.draw do
  devise_for :users
  get "u/username" => "public#profile", as: :profile
  resources :communities do
    resources :posts
  end


  resources :subscriptions
  resources :comments, only: [:create]

  root to: 'public#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
