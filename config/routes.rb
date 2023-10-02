Rails.application.routes.draw do
  root 'students#index'
  get 'students', to: 'students#index'
  post 'students', to: 'students#create'
end
