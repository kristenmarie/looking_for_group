Rails.application.routes.draw do
  devise_for :users
  resources :users, only: [:show]
  root :to => 'groups#home'

  resources :groups do
    resources :memberships
  end
  resources :memberships
end
