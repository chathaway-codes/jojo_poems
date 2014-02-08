JojoPoems::Application.routes.draw do
  get "feed/index"
  get "feed/show"
  get "static_pages/index"

  get "home", to: "home#index"

  resources :poem_comments

  resources :licenses

  resources :authors

  resources :poems

  root :to => "static_pages#index"
  devise_for :users, :controllers => {:registrations => "registrations"}
  get 'users', to: "users#show"
  get 'profile', to: "users#show"
end
