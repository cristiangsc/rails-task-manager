Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  #read
  
  get  'tasks/new',      to: 'tasks#new', as: :new_task
  #resources :tasks
  get  'tasks',          to: 'tasks#index', as: :tasks
  get  'tasks/:id',      to: 'tasks#show', as: :task
  #create
  #get  'tasks/new',      to: 'tasks#new', as: :new_task
  post 'tasks',          to: 'tasks#create'
  #update
  get  'tasks/:id/edit', to: 'tasks#edit', as: :edit_task
  patch 'tasks/:id',     to: 'tasks#update'
  #delete
  delete 'tasks/:id',    to: 'tasks#destroy', as: :delete_task
end
