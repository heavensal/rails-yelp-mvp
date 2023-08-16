Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  # get "/restaurants", to: "restaurants#index"

  # post "/restaurants", to: "restaurants#create"
  # # get "/restaurants/new", to: "restaurants#new"
  # get "/restaurants/:id", to: "restaurants#show", as: :show

  # get "/restaurants/:id/reviews", to: "reviews#index" as: :reviews
  resources :restaurants, only: [:index, :create, :show] do
    resources :reviews, only: [:index, :create]
  end

end
#   restaurants  GET     /restaurants           restaurants#index
#                  POST    /restaurants           restaurants#create
#  new_restaurant  GET     /restaurants/new       restaurants#new
# edit_restaurant  GET     /restaurants/:id/edit  restaurants#edit
#      restaurant  GET     /restaurants/:id       restaurants#show
#                  PATCH   /restaurants/:id       restaurants#update
#                  DELETE  /restaurants/:id       restaurants#destroy


