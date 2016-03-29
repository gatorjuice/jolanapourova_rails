Rails.application.routes.draw do
  devise_for :users
  
  get '/' => 'paintings#index'

  get '/paintings' => 'paintings#index'
  get '/paintings/new' => 'paintings#new'
  post '/paintings' => 'paintings#create'
  get '/paintings/:id' => 'paintings#show'
  get '/paintings/:id/edit' => 'paintings#edit'
  patch '/paintings/:id' => 'paintings#update'
  delete '/paintings/:id' => 'paintings#destroy'
end
