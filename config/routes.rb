Rails.application.routes.draw do
  devise_for :users
  resources :users, only: [:index]
  root :to => 'groups#home'

  resources :groups do
    resources :memberships
  end
  resources :memberships
end
