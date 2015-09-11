Rails.application.routes.draw do
  resources :weights

  devise_for :users
  root 'welcome#index'
  
end
