Rails.application.routes.draw do
  root "static_pages#home"
  get 'tasks/index'
end
