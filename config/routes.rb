Rails.application.routes.draw do

  resources :members
  resources :plans
  resources :rooms
  resources :mypage
  resources :top


  resources :reservations do
    member do
      get 'confirm'
    end
  end

  resource :session, only: [:create, :destroy]
  
  root 'top#index'


end
