Rails.application.routes.draw do
  resources :my_tasks, only: [:index, :show, :create]
end
