Rails.application.routes.draw do
  root :to => 'home#index'
  devise_for :users, controllers: {}
  resources :accounts
  resources :photos do
    resources :tags, :only => [:create, :destroy]
  end
end
