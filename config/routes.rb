Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "main_pages#index"
  resources :attendances, only: [:create, :index]

  resources :admins, only: [:new, :create]
  get '/logout', to: 'admins#destroy'
  resources :employees, only: [:index, :edit, :new, :create, :update]
  resources :stores, only: [:index , :new, :create, :edit, :update]
  get 'portal', to: 'employees#index'
end
