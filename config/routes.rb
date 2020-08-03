Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/flights/:id", to: "flights#show"
  get "/passangers/:id", to: "passangers#show"
  post "/passangers/:id/flight", to: "passanger_flights#update"
end
