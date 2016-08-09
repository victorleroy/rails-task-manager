Rails.application.routes.draw do

  get '/tasks', to: 'tasks#index'

  get '/tasks/new', to: 'tasks#new', as: 'new_task'

  post 'tasks', to: 'tasks#create'

  get '/tasks/:id/edit', to: 'tasks#edit', as: 'edit_task'

  patch "tasks/:id" => "tasks#update"

  delete "tasks/:id" => "tasks#destroy"

  get '/tasks/:id', to: 'tasks#show', as: 'task'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
