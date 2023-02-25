Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root "pages#home"
  resources :groups, only: [:show, :new, :create, :destroy]
  resources :entities, only: [:index, :new, :show, :create, :destroy]
end
