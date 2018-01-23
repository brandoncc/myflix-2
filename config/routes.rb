Myflix::Application.routes.draw do
  get 'ui(/:action)', controller: 'ui'
  get '/home', to: 'videos#index', as: 'home'
  resources :videos, only: [:index, :show]
  resources :categories, only: [:show]
end
