Rails.application.routes.draw do
  resources :projects
  resources :services

  root to: 'projects#index'
end
