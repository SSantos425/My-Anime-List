Rails.application.routes.draw do
  get 'control_users/index'
  devise_for :users
  root 'animes#index'
  resources :animes do
    resources :favorites, only: [:index, :create, :destroy]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
