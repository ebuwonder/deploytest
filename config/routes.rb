Rails.application.routes.draw do
  root 'users#new'

  #New User
  get  'register'     => 'users#new', as: 'new_register'
  get  'users/new'    => 'users#new'

  #Create User
  post 'register'     => 'users#create', as: 'register'
  post 'users'        => 'users#create'

  #Show User
  get  'users/:id'    => 'users#show',   as: 'user'

  #New Login
  get  'login'        => 'sessions#new', as: 'new_login'
  get  'sessions/new' => 'sessions#new'

  #Login
  post 'login'        => 'sessions#create', as: 'login'
  post 'sessions'     => 'sessions#create'

  #Logout
  delete 'logout'     => 'sessions#destroy', as: 'logout'
  delete 'sessions'   => 'sessions#destroy'

end
