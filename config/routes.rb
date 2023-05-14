Rails.application.routes.draw do
  root  "articles#index"
  get "/articles/:id/edit", to: "articles#edit"
  post "/articles", to: "articles#create"
  get "/articles/new", to: "articles#new"
  get "/articles", to: "articles#index"
  get "/articles/:id", to: "articles#show", as: :article
  
end
