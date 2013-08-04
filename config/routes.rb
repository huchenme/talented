Talentedio::Application.routes.draw do
  devise_for :users

  root :to => 'main#home'
end
