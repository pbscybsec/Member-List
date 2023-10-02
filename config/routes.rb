Rails.application.routes.draw do
  get 'students', to: 'students#index'
  post 'students', to: 'students#create'
end
