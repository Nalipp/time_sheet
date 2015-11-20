Rails.application.routes.draw do
  resources :time_groups
  root 'time_groups#index'
end
