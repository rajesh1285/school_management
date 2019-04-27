Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'principals#index'
  resources :schools
  resources :principals
  resources :students
  resources :teachers
end
