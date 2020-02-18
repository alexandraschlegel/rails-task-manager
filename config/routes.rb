Rails.application.routes.draw do

  # Read    I can list tasks
  get 'tasks', to: 'tasks#index'
  get 'tasks/new', to: 'tasks#new'
  post 'tasks', to: 'tasks#create'

  get 'task/:id', to: 'tasks#show', as: 'task_show'

  get 'task/:id/edit', to: 'tasks#edit'

  patch 'task/:id', to: 'tasks#update', as: 'task_update'

  delete 'task/:id', to: 'tasks#destroy', as: 'task_delete'

  # Delete
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
