Rails.application.routes.draw do
  resources :flights, except: [:edit, :update, :destroy]
  root 'flights#index'
end
