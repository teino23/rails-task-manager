Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ('/')
  # root 'articles#index'
  get 'tasks', to: 'tasks#index'
  # creat/new
  get 'tasks/new', to: 'tasks#new'
  post 'tasks', to: 'tasks#create'
  get 'tasks/:id', to: 'tasks#show', as: 'task'
  # edit/update
  get 'tasks/:id/edit', to: 'tasks#edit', as: 'task_edit'
  patch 'tasks/:id', to: 'tasks#update'

  # delete/destroy
  delete 'tasks/:id', to: 'tasks#destroy'

end

#   rails generate model task title:string, details:text, completed: boolean
