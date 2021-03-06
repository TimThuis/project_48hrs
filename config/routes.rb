Rails.application.routes.draw do
  ActiveAdmin.routes(self)
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  root to: 'pages#home'

  resources :tours, only: [:index, :show] do
    resources :bookings, only: [:new, :create]
  end

  resources :guides, only: [:index, :show] do
    member do
      get :detail
    end
  end

  namespace :account do
    resource :profile, only: [:show, :edit, :update]

    resources :tours, only: [:new, :create, :edit, :update, :index, :destroy]

    resources :bookings, only: [:index] do
      member do
        patch :accept
        patch :decline
      end
    end
  end

  namespace :visitor do
    resources :bookings, only: [:index] do
      member do
        patch :cancel
      end
    end
  end
end


