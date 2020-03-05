Rails.application.routes.draw do
  devise_for :users, :controllers => {:registrations => "registrations"}
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :projects do
    resources :bookings, only: [:create]
  end

  resources :bookings, only: [:index, :show] do
    member do
      patch :accept
    end
    member do
      patch :reject
    end
  end
  
  resources :projects
  resources :charities

  get "profile", to: "pages#profile"
  
end
