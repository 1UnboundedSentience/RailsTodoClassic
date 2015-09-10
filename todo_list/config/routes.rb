Rails.application.routes.draw do

  resources :tasks, only:[:create, :destroy, :update]
  post '/tasks/:id/complete',   to: 'tasks#complete',   as: 'complete_task'
  post '/tasks/:id/uncomplete', to: 'tasks#uncomplete', as: 'uncomplete_task'
  root to: 'tasks#index'
end
