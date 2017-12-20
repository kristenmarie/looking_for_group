Rails.application.routes.draw do
  devise_for :users
  root :to => 'groups#home'

  resources :groups do
    resources :memberships
  end
  resources :memberships
end
