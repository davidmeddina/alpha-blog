# frozen_string_literal: true

Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'pages#home'
  resources :articles
  get 'about', to: 'pages#about'
  get 'signup', to: 'users#new'
  resources :users, except: %i[new]
end
