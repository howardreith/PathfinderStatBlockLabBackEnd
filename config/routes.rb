# frozen_string_literal: true

Rails.application.routes.draw do
  resources :public_creatures
  resources :foods
  resources :public_creatures, only: %i[index show]
  resources :creatures
  # RESTful routes
  resources :examples, except: %i[new edit]
  resources :users, only: %i[index show update]

  # Custom routes
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out' => 'users#signout'
  patch '/change-password' => 'users#changepw'
end
