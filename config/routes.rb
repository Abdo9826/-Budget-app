Rails.application.routes.draw do

  devise_scope :user do
    get 'users/sign_out' => 'devise/sessions#destroy'
  end


  get '/get-started', to: 'users#splash'
  devise_for :users
  resources :users
  resources :groups do
    resources :operations
  end

  root "groups#index"
end
