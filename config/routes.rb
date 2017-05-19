Rails.application.routes.draw do
  root 'links#index'
  resources :links

  # authentication
  get    'login'  => 'sessions#new'
  post   'login'  => 'sessions#create'
  delete 'logout' => 'sessions#destroy'
end
