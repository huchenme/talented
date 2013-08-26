Talentedio::Application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  resources :password_resets, path: 'passwords'

  get 'login' => 'user_sessions#new'
  post 'login' => 'user_sessions#create'
  delete 'logout' => 'user_sessions#destroy', :as => :logout
  get 'signup' => 'users#new'
  post 'signup' => 'users#create'
  get 'settings' => 'users#edit'
  put 'settings' => 'users#update'
  delete 'account/delete' => 'users#destroy', :as => 'delete_account'

  resource :profile, only: [:show, :edit, :update]
  resources :jobs

  root :to => 'main#home'
end
