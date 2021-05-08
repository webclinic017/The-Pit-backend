Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :note_books
      resources :stock_purchases
      resources :notes
      resources :users
      post "/login", to: "users#login"
      post "/signup", to: "users#signup"
      get "/currentuser", to: "users#show"
      patch "/currentuser", to: "users#update"
    end
  end
end
