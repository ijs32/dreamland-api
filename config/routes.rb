Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  # USER ROUTES
  post "/users" => "users#create"
  
  # SESSIONS ROUTE
  post "/sessions" => "sessions#create"

  # OFFERS ROUTE
  post "/offers/:candidate_id/:opportunity_id" => "offers#create"

  # OPPORTUNITY ROUTE
  # index route
  get "/opportunities" => "opportunities#index"
  # show route
  get "/opportunities/:id" => "opportunities#show"
  # create route
  post "/opportunities" => "opportunities#create"
  # update route
  patch "/opportunities/:id" => "opportunities#update"
  # destroy route
  delete "/opportunities/:id" => "opportunities#destroy"

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
  delete "/candidates" => "candidates#destroy"
  
  
  ### RECRUITER ROUTES
  post "/recruiters" => "recruiters#create"
  delete "/recruiters/:id" => "recruiters#destroy"
end
