# frozen_string_literal: true

Rails.application.routes.draw do
  root to: 'pages#home'
  devise_for :users

  devise_scope :user do
    get 'users/sign_out' => 'devise/sessions#destroy'
  end
end
