Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/*
  get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker
  get "manifest" => "rails/pwa#manifest", as: :pwa_manifest

  # Products RESTful APIs
  get "/products" => "products#index"
  post "/products" => "products#create"
  get "/products/:id" => "products#show"
  put "/products/:id" => "products#update"
  patch "/products/:id" => "products#update"
  delete "/products/:id" => "products#destroy"

  # Supplier Restful APIs
  get "/suppliers" => "suppliers#index"
  post "/suppliers" => "suppliers#create"
  get "/suppliers/:id" => "suppliers#show"
  put "/suppliers/:id" => "suppliers#update"
  patch "/suppliers/:id" => "suppliers#update"
  delete "/suppliers/:id" => "suppliers#destroy"

  get "users/current" => "users#show"
  post "/users" => "users#create"

  post "/sessions" => "sessions#create"

  get "/orders" => "orders#index"
  post "/orders" => "orders#create"
  get "/orders/:id" => "orders#show"

  get "/categories" => "categories#index"
  get "/categories/:id" => "categories#show"

  get "/carted_products" => "carted_products#index"
  post "/carted_products" => "carted_products#create"
  patch "carted_products/:id" => "carted_products#update"

  # Defines the root path route ("/")
  # root "posts#index"
end
