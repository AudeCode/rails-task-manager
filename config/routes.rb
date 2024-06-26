Rails.application.routes.draw do
  root 'tasks#index'

  get '/tasks', to: 'tasks#index'

  get '/tasks/new', to: 'tasks#new', as: 'new_task'
  post '/tasks', to: 'tasks#create'

  get '/tasks/:id', to: 'tasks#show', as: 'task'

  get '/tasks/:id/edit', to: 'tasks#edit', as: 'edit_task'
  patch '/tasks/:id', to: 'tasks#update'

  get '/tasks/:id/destroy', to: 'tasks#destroy', as: 'destroy_task'
  delete '/tasks/:id', to: 'tasks#remove'

end
