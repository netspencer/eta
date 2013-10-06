Eta::Application.routes.draw do
  api :version => 1 do
    resources :events
    resources :venues
    resources :users
  end
end
