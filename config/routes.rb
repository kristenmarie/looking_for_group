Rails.application.routes.draw do
  devise_for :users
  root :to => 'groups#home'

  resources :groups
  resources :memberships
end
