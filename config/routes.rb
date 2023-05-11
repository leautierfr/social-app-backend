Rails.application.routes.draw do
  post "/users" => "users#create"

  get "/users" => "users#index"

  get "/users/:id" => "users#show"

  patch "/users/:id" => "users#update"

  delete "/users/:id" => "users#destroy"

  post "/posts" => "posts#create"

  post "/sessions" => "sessions#create"

  get "/follows" => "follows#index"

  post "/follows" => "follows#create"
end
