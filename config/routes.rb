Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get 'dashboard', to: 'user#dashboard'
  resources :venues, only: %i[index show] do
    resources :events, only: %i[create]
  end

  # routes provided by resources
  # get 'venues', to: 'venues#index'
  # get 'venues/:id', to: 'venues#show'
  # post 'venues/:id/events'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
