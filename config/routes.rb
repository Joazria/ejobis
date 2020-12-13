Rails.application.routes.draw do

  devise_for :users
  root to: 'pages#home'
  get '/users', to: 'pages#profile'
 # get '/profile', to: 'pages#profile', as: :profile
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :companies do
    resources :ejobis, only: [:new, :create, :show]

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  end
  resources :ejobis, only: [:destroy, :update, :edit]
  resources :ejobers

end
