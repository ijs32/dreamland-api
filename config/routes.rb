Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  # USER ROUTES
  post "/users" => "users#create"

  # CANDIDATE ROUTES
  # index route
  get "/candidates" => "candidates#index"
  # show route
  get "/candidates/:id" => "candidates#show"
  # create route
  post "/candidates" => "candidates#create"
  # update route
  patch "/candidates/:id" => "candidates#update"
  # destroy route
  delete "/candidates/:id" => "candidates#destroy"
  
  post "/sessions" => "sessions#create"
  
  ### RECRUITER ROUTES
  post "/recruiters" => "recruiters#create"
  delete "/recruiters/:id" => "recruiters#destroy"
end
