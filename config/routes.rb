Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'posts#index'
  resources :posts, only: [:new, :create, :show, :destroy] do
    resource :favorites, only: [:create, :destroy]

    resources :comments, only: [:create, :destroy]

  end

  resources :users, only: [:show, :edit, :update]


end
