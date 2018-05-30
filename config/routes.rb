Rails.application.routes.draw do

  root 'tanks#index'

  resources :tanks

end
