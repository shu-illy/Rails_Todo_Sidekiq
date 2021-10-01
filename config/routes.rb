Rails.application.routes.draw do
  get 'my_tasks', to: 'my_tasks#list'
  get 'my_tasks/:id', to: 'my_tasks#show'
  post 'my_tasks', to: 'my_tasks#create'
end
