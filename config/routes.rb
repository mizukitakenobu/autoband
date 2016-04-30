Rails.application.routes.draw do
  resources :users
  resources :features

  root 'lp#index'
  get '/' => 'lp#index'
  get '/q' => 'features#index'
end
