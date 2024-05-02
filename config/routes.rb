Rails.application.routes.draw do
  root "static_pages#home"
  resources :tasks
  resources :users
end
