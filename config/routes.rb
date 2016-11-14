Rails.application.routes.draw do
  resources :users, only: [] do
    collection do
      post :sign_up
      get  :log_in
    end
  end
end
