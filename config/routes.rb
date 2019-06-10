Rails.application.routes.draw do
  get 'sales/new'
  post 'sales', to: 'sales#create'
end
