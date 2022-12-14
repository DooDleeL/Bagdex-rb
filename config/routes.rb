Rails.application.routes.draw do
  namespace :admins_backoffice do
    get 'welcome/index'
  end
  namespace :users_backoffice do
    get 'welcome/index'
  end
  devise_for :users
  devise_for :admins
  get 'login/index'
  resources :types
  resources :bagmons
  root to: 'types#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
