Rails.application.routes.draw do

  resources :lists, except:[:index, :edit] do
    resources :tasks, only: [:create]
  end
  resources :tasks, only:[:destroy]
  post '/tasks/:id/complete',   to: 'tasks#complete',   as: 'complete_task'
  post '/tasks/:id/uncomplete', to: 'tasks#uncomplete', as: 'uncomplete_task'

  root to: 'lists#index'
end
