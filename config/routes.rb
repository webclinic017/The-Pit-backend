Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :stock_purchases
      resources :conversations
      resources :messages
      resources :users
      post "/login", to: "users#login"
      post "/signup", to: "users#signup"
      get "/currentuser", to: "uesrs#show"
      patch "/currentuser", to: "users#update"
    end
  end
end
