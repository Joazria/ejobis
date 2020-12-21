Rails.application.routes.draw do

  devise_for :users
  root to: 'pages#home'
  get '/users', to: 'pages#profile'
  get '/profile', to: 'pages#profile', as: :profile
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :companies do
    resources :ejobis, only: [:new, :create, :show] do
      resources :ejobi_validations, only: [:new, :create, :show]
    end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  end
  resources :ejobi_validations, only: [:destroy, :update, :edit]
  resources :ejobis, only: [:destroy, :update, :edit]
  resources :ejobers do
    member do
     post :add_favorite
    post :unfavorite
    post 'favoritar', to: 'ejobers#favoritar'
    end
  end
end
