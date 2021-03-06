# frozen_string_literal: true

Rails.application.routes.draw do

  # RESTful routes
  resources :examples, except: %i[new edit]
  resources :users, only: %i[index show update]
  resources :stocks, except: %i[new edit]
  # resources :prices, only: %i[index show]

  # Custom routes
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out' => 'users#signout'
  patch '/change-password' => 'users#changepw'
  get '/prices' => 'prices#index'
  get '/cheese' => 'cheese#something'
end
