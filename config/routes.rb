Rails.application.routes.draw do
  root 'messages#index'
  resources :messages, only: [:index, :create]
  match "*path" => "messages#create", via: [:get, :post]
end
