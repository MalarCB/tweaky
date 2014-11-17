Rails.application.routes.draw do

  resources :produits do
    resources :comments, :only => [:create]
  end

  root 'home#index'

  #get 'detail', to: 'detail#index', as: :detail

  get 'detail/:id', to: 'produits#detail', as: :detail

  get 'display', to: 'produits#display', as: :vitrine
#  get 'products', to: 'product#index', as: :admin_products

  get 'home', to: 'home#index', as: :home

  get 'user/login', to: 'user#signin', as: :login
  post 'user/login', to: 'user#login', as: :sign_in

  get 'user/signup', to: 'user#signup', as: :sign_up
  post 'user/signup', to: 'user#register', as: :register

  get 'user/welcome', to: 'user#welcome', as: :welcome_user

  get 'products', to: 'product#index', as: :products
  get 'product/new', to: 'product#new', as: :new_product
  post 'products', to: 'product#create', as: :create_product

  get 'download', to: 'produits#download', as: :download

  resources :headers
end

