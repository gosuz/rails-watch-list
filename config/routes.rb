Rails.application.routes.draw do
  get 'lists/bookmarks'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"


  # lists

  # Rails.application.routes.draw do
  #   resources :brands, only: [:index, :show] do
  #     resources :products, only: [:index, :show]
  #   end

  #   resource :basket, only: [:show, :update, :destroy]

  #   resolve("Basket") { route_for(:basket) }
  # end
  root to: 'lists#index'
  resources :lists, only: [:index, :show, :new, :create]

  resources :bookmarks, only: [:new, :create, :destroy]
end
