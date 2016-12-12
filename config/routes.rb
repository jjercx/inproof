# == Route Map
#
#        Prefix Verb URI Pattern              Controller#Action
# sign_up_users POST /users/sign_up(.:format) users#sign_up
#  log_in_users GET  /users/log_in(.:format)  users#log_in
#      projects GET  /projects(.:format)      projects#index
#               POST /projects(.:format)      projects#create
#

Rails.application.routes.draw do

  resources :users, only: [] do
    collection do
      post :sign_up
      get  :log_in
    end
  end

  resources :projects, only: [:index, :create]
  resources :habits, only: [:index, :create]

end
