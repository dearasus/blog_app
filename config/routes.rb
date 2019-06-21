Rails.application.routes.draw do
  get '/articles', to: 'articles#destroy'
  get '/article/new', to: 'article#new'
  get '/article/:id/edit', to: 'article#edit'
  
  get '/signup', to:'users#new'
  get '/login', to:'sessions#new'
  post '/login', to:'sessions#create'
  get '/logout', to:'sessions#destroy'

  resources :articles
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end