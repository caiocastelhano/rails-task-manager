Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
  
  #list all tasks
  get 'tasks', to: 'tasks#index'

  #add a new task
  get 'tasks/new', to: 'tasks#new', as: :new_task
  post 'tasks', to: 'tasks#create'

  #list one task
  get 'tasks/:id', to: 'tasks#show', as: :task

  #edit a task
  get 'tasks/:id/edit', to: 'tasks#edit', as: :edit_task
  patch 'tasks/:id', to: 'tasks#update'

  #delete a task
  delete 'tasks/:id', to: 'tasks#destroy'

  #Se eu quiser substituir todas as 7 rotas por um comando só, eu uso o código abaixo:
  # Rails.application.routes.draw do
  #   resources :restaurants
  # end
end
