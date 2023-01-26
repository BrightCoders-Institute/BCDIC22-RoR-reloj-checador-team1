Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "main_pages#index"
  resources :attendances

  resources '/admins/index', to: 'admins#index', as: 'admin', only: [:new, :create]

end
