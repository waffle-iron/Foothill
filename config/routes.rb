Rails.application.routes.draw do
  devise_for :users, controllers: { omniauth_callbacks: 'omniauth_callbacks' }
  root to: 'users#index'

  resources :users

  resources :sell_books, except: [:edit, :update, :destroy]
end
