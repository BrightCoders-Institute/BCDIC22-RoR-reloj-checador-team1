Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "main_pages#index"
  resources :attendances

  resources :admins, only: [:new, :create]
  get '/logout', to: 'admins#destroy'
  resources :employees, only: [:index, :edit, :new]
  resources :stores, only: [:new]
  get 'portal', to: 'employees#index'
end
