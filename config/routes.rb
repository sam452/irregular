Irregular::Application.routes.draw do
  
  namespace :api, defaults: {format: 'json'} do
    namespace :v1 do
      resources :tasks
      resources :tokens,:only => [:create, :destroy]
    end
  end
  resources :tasks

  root :to => "tasks#index"
  devise_for :users
  resources :users
authenticated :user do
    root :to => 'home#index'
  end

  
end