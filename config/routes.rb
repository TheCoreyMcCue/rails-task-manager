Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/tasks', to: 'tasks#index'

  # # create a task
  #   # display the form
   get '/tasks/new', to: "tasks#new", as: :new_task
  #   # post information into DB
   post '/tasks', to: "tasks#create"
    # # see one task
   get '/tasks:id/', to: "tasks#show", as: :task
    # update a restaurant
    # display the form
  get '/tasks:id/edit', to: "tasks#edit", as: :edit
    # post information into db
  patch '/tasks:id', to: "tasks#update"
   # # destroy a restaurant
   delete '/tasks:id', to: "tasks#destroy"
end
