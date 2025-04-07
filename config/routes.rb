Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  root 'projects#index'
  resources :projects, only: %i(index show create new)
  resources :comments, only: :create
  resources :status_changes, only: :create
end
