Eta::Application.routes.draw do
  get ":id", to: "client#show", as: "client"

  api :version => 1 do
    resources :events
    resources :venues
    resources :users do
      resources :locations
    end
  end
end
