Rails.application.routes.draw do
  
  resources :sessions, only: [:new, :create, :destroy]
  get 'signup', to: 'scouts#new', as: 'ssignup'
  get 'asignup', to: 'advisors#new', as: 'asignup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'

  resources :advisors
  resources :scouts

  get 'page/index'
  root 'page#index'
  
end
