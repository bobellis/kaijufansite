Rails.application.routes.draw do
  root :to => 'kaijus#index'

  resources :kaijus
  resources :works

end
