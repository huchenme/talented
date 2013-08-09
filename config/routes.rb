Talentedio::Application.routes.draw do
  mount RailsAdmin::Engine => '/admin', :as => 'rails_admin'

  devise_for :users, path: '', path_names: {sign_in: 'login', sign_out: 'logout'}, controllers: { registrations: "registrations" }
  root :to => 'main#home'
end
