Rails.application.routes.draw do
  get 'welcome/index'

  resources :weights

  devise_for :users

  authenticated :user do
    root "weights#index", as: "authenticated_root"
  end

  root 'welcome#index'
  
end
