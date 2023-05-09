Rails.application.routes.draw do
  # Defines the root path route ("/")
  # root "articles#index"
  root  "articles#index"
  get "/articles/new", to: "articles#new"
  get "/articles", to: "articles#index"
  get "/articles/:id", to: "articles#show", as: :article
  
end
