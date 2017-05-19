Rails.application.routes.draw do
  root 'links#index'
  resources :links

  # user
  resources :users, only: [:edit, :update]

  # authentication
  get    'login'  => 'sessions#new'
  post   'login'  => 'sessions#create'
  delete 'logout' => 'sessions#destroy'
end
