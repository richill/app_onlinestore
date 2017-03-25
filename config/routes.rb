Rails.application.routes.draw do

  resources :products
  devise_for :users
  devise_scope :user do
    get 'login', to: 'devise/sessions#new' #signin_path
    get 'register', to: 'devise/registrations#new' #signup_path
  end

  #static pages
  root  'static_pages#homepg'
  get   'about-us',                       to: 'static_pages#aboutpg'
end
