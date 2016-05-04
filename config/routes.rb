Rails.application.routes.draw do
  resources :users

  root 'lp#index'
  get "/q" => "features#index"
  post "/q" => "features#index"
end
