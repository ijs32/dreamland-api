Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  # USER ROUTES
  post "/users" => "users#create"

  post "/sessions" => "sessions#create"
  

  ### RECRUITER ROUTES
  post "/recruiters" => "recruiters#create"
  delete "/recruiters/:id" => "recruiters#destroy"
end
