Talentedio::Application.routes.draw do
  resources :password_resets, path: 'passwords'

  get 'login' => 'user_sessions#new'
  post 'login' => 'user_sessions#create'
  delete 'logout' => 'user_sessions#destroy', :as => :logout
  get 'signup' => 'users#new'
  post 'signup' => 'users#create'
  get 'settings' => 'users#edit'
  put 'settings' => 'users#update'
  delete 'account/delete' => 'users#destroy', :as => 'delete_account'

  mount RailsAdmin::Engine => '/admin', :as => 'rails_admin'

  root :to => 'main#home'
end
