Rails.application.routes.draw do
  get "/follow_animes", to: "follow_animes#index"
  get "/favorites", to: "favorites#index"
  get 'control_users/index'
  devise_for :users
  root 'animes#index'
  resources :animes do
    resources :favorites, only: [:index, :create, :destroy]
    resources :follow_animes, only: [:index, :create, :destroy]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
