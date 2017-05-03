Rails.application.routes.draw do
  resources :orders
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :events
  root 'welcome#index'
end
