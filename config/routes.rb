Rails.application.routes.draw do

  devise_for :businesses
  get 'show/:id', to: 'home#show', as: 'show', id:/\d+/
  root to: 'home#index', as: 'home'

  get '/about', to: 'home#about', as: 'about'
  get '/contacts', to: 'home#contacts', as: 'contacts'

  get '/services', to: 'contract#services', as: 'services'

  get '/search' => 'home#search', as: 'search'
  get '/search_results' => 'home#search_results', as: 'search_results'

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
