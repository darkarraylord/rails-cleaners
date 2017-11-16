  Rails.application.routes.draw do
  # get 'users/show'


  mount Attachinary::Engine => "/attachinary"

  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  root to: 'pages#home'

  resources :users, only: [:show] do
    resources :bookings, only: [:new, :create, :show]
  end

  resources :users do
    resources :reviews, only: [:index, :show, :edit, :new, :create]
  end
end


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
