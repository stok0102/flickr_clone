Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  root :to => 'home#index'
  devise_for :users, controllers: {}
  resources :accounts
  resources :photos do
    resources :tags, :only => [:create, :destroy]
  end
end
