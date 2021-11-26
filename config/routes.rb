Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root                   to: 'pages#home'
  get 'about',           to: 'pages#about',      as: :about
  get 'contact',         to: 'pages#contact',    as: :contact

  resources :dogs, only: [:index, :show, :new, :create, :destroy] do
    resources :bookings, only: [:create, :new]
  end

  resources :bookings, only: [:destroy]
  resources :dashboard, only: [:show]

end
