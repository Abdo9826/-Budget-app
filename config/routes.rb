# frozen_string_literal: true

Rails.application.routes.draw do
  devise_scope :user do
    get 'users/sign_out' => 'devise/sessions#destroy'
  end

  get '/get-started', to: 'users#splash'
  devise_for :users
  resources :users
  resources :groups do
    resources :operations, only: [:index]
  end

  resources :operations, only: %i[new create edit update destroy post]

  root 'groups#index'
end
