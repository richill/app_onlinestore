Rails.application.routes.draw do

  resources :products
  devise_for :users

  #static pages
  root  'static_pages#homepg'
  get   'about-us',                       to: 'static_pages#aboutpg'
end
