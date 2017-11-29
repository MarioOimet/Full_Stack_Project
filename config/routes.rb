Rails.application.routes.draw do

  get '/cart/index'

  post '/cart/:id' => 'cart#create', as: 'cart'

  post '/cart/destroy/:id' => 'cart#destroy', as: 'destroy'

  root to: 'home#index', as: 'home'

  get 'show/:id', to: 'home#show', as: 'show', id:/\d+/
  get '/about', to: 'home#about', as: 'about'
  get '/contacts', to: 'home#contacts', as: 'contacts'


  get '/search' => 'home#search', as: 'search'
  get '/search_results' => 'home#search_results', as: 'search_results'

  devise_for :businesses, controllers: { sessions: 'businesses/sessions' }

  devise_scope :business do
  get 'sign_in', to: 'devise/sessions#new'
  end

  devise_scope :business do
  get 'sign_out', to: 'devise/sessions#delete'
  end

  devise_for :businesses, skip: :all

  devise_scope :business do
    get '/services', to: 'businesses/sessions#new'
  end

  # devise_for :businesses, path: 'auth', path_names: { sign_in: 'login', sign_out: 'logout', password: 'secret', confirmation: 'verification', unlock: 'unblock', registration: 'register', sign_up: 'cmon_let_me_in' }
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
