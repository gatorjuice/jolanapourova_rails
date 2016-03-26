Rails.application.routes.draw do
  get '/paintings' => 'paintings#index'
end
