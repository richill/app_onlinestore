Rails.application.routes.draw do

  resources :products do
    collection do 
      get   'clothes/dresses',               to: 'products#clothes_dresses'
      get   'clothes/jeans-and-denims',      to: 'products#clothes_jeans_and_denims'
    end
  end

  devise_for :users, controllers: {registrations: 'users/registrations'}, defaults: { format: 'html' }
  # devise_for :users
  devise_scope :user do
    get 'login', to: 'devise/sessions#new' #signin_path
    get 'register', to: 'devise/registrations#new' #signup_path
  end

  #static pages
  root  'static_pages#homepg'
  get   'about-us',                       to: 'static_pages#aboutpg'
end
