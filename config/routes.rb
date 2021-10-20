Rails.application.routes.draw do
  
  resources :sections

  get 'pages/show'
  root 'pages#show'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
