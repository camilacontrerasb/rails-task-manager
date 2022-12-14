Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
  # root "articles#index"

  # Read all tasks
  get "/tasks", to: "tasks#index"

  #Create new task
  get "/tasks/new", to: "tasks#new", as: :new_task
  post "/tasks", to: "tasks#create"

  #Read one (details)
  get "/tasks/:id", to: "tasks#show", as: :task

  #Edit a task
  get '/tasks/:id/edit', to: 'tasks#edit', as: :edit_task
  patch '/tasks/:id', to: 'tasks#update'

  # Delete
  delete '/restaurants/:id', to: 'restaurants#destroy'
end
