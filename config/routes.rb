Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  get "/clothings" => "clothings#index"
  post "/clothings" => "clothings#create"
  get "/clothings/:id" => "clothings#show"
  patch "/clothings/:id" => "clothings#update"
  delete "/clothings/:id" => "clothings#destroy"
end
