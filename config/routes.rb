Rails.application.routes.draw do
  devise_for :users, :controllers => {:registrations => "registrations"}
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :projects do
    resources :bookings, only: [:create]
    resources :likes, only: [:create]
  end

  resources :bookings, only: [:index, :show, :destroy] do
    member do
      patch :accept
    end
    member do
      patch :reject
    end
  end

  resources :likes, only: [:destroy]

  resources :charities

  get "profile", to: "pages#profile"

end
