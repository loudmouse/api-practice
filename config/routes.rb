Rails.application.routes.draw do

  root 'tanks#index'

  get 'tanks/new'
  get 'tanks/create'
  get 'tanks/update'
  get 'tanks/edit'
  get 'tanks/destroy'
  get 'tanks/index'
  get 'tanks/show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
