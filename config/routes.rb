Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check
  get "/fortunes", controller: "my_examples", action: "my_examples"
  get "/generate_random", controller: "my_examples", action: "generate_random"
  get "/bottles_99", controller:"my_examples", action: "bottles_99"

  # Defines the root path route ("/")
  # root "posts#index"
end
