Rails.application.routes.draw do
  resources :employees
  resources :departments
  resources :employees
  resources :departments
  resources :tasks
  
  root to: 'employees#index'
  # get 'tasks/index'
  
  # get 'tasks/show'

  # get 'tasks/new'

  # get 'tasks/edit'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
