Rails.application.routes.draw do
  #get 'sales/new'
  #post 'sales', to: 'sales#create'
  get 'sales/done'
  resources :sales
end
