Rails.application.routes.draw do
  mount ActionCable.server => '/cable'
  
  namespace :api do
    namespace :v1 do
      resources :stock_purchases
      resources :chatrooms
      resources :conversations
      resources :messages
      resources :users
      post "/login", to: "users#login"
      post "/signup", to: "users#signup"
      get "/currentuser", to: "users#show"
      patch "/currentuser", to: "users#update"
    end
  end
end
