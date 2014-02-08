JojoPoems::Application.routes.draw do
  resources :poem_comments

  resources :licenses

  resources :authors

  resources :poems

  root :to => "home#index"
  devise_for :users, :controllers => {:registrations => "registrations"}
  resources :users
end