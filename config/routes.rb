Rails.application.routes.draw do

  # Renders user registration form
  get '/registration' => 'users#new'
  # Receives form and creates user
  post '/users' => 'users#create'

end
