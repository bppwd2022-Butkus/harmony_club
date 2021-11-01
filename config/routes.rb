Rails.application.routes.draw do
  
  resources :sponsors
  resources :photos
  resources :albums
  resources :events
  resources :pages
  get 'site/home'
  get 'site/event'
  get 'site/page'
  get 'site/photo'
  get 'site/sponsor'
  get 'site/contact'
  devise_for :members
  resources :sections

  root 'site#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
