Rails.application.routes.draw do
  
  resources :tweets
  
  # Home page
  get 'home/index'

  # From login page and creating user session
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'

  # Removes user from sessionle
  get '/logout' => 'sessions#destroy'

  # Renders user registration form
  get '/registration' => 'users#new'
  # Receives form and creates user
  post '/users' => 'users#create'

end
