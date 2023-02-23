Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  resources :lists, only: [:new, :show, :create, :index] do
    resources :bookmarks, only: [:destroy]
  end

  resources :bookmarks, only: [:destroy]
end
