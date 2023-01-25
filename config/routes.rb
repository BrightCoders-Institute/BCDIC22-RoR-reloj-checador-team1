Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "main_pages#index", as: 'main_pages'
  resources :attendances

  get '/admins/index', to: 'admins#index', as: 'login_admin'
  resources :login_admins

end
