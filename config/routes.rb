Rails.application.routes.draw do
  get 'contacts/new'

  get 'contacts/create'

get 'city/show'

  get '/search' => 'city#search'
  get 'city/search'

  get 'home/index'

  resources :city
  resources :home

  match '/contacts',     to: 'contacts#new',             via: 'get'
  resources "contacts", only: [:new, :create]

  root 'home#index'
end
