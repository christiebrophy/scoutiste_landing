Rails.application.routes.draw do
  get 'contacts/new'

  get 'contacts/create'


  get 'home/index'

  resources :home

  match '/contacts',     to: 'contacts#new',             via: 'get'
  resources "contacts", only: [:new, :create]

  root 'home#index'
end
