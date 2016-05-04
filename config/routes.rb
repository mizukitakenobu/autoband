Rails.application.routes.draw do
  resources :users

  root 'top#index'
  get "/q" => "features#index"
  post "/q" => "features#index"
end
