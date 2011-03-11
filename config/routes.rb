Project2::Application.routes.draw do
  get "pages/login"
  match "pages/login", :via => [:get,:post]
  match "pages/continue" => "pages#continue"

  get "pages/logout"

  get "users/new"
  match "users/create" => "users#create"

  get "users/edit"
  match "users/chooseUser" => "users#chooseUser"
  match "users/update" => "users#update"
  
  get "users/chooseUser"
  match "users/edit" => "users#edit"

  get "users/index"

  get "user_suggestions/index"
  
  get "user_suggestions/new"
  
  get "user_suggestions/create"
  match "user_suggestions/create" => "user_suggestions#create"
  
  get "user_suggestions/chooseSug"
  match "user_suggestions/chooseSug" => "user_suggestions#chooseSug"
  
  get "user_suggestions/edit"
  
end
