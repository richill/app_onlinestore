Rails.application.routes.draw do

  devise_for :users

  #static pages
  root  'static_pages#homepg'
  get   'about-us',                       to: 'static_pages#aboutpg'
end
