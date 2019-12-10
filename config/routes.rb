Rails.application.routes.draw do
  get 'helds/new'
  get 'sessions/new'
  
  #get 'users/new'
  root 'pages#index'
  get 'pages/help'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  
  resources :users
  resources :helds
  resources :participates
  
  get "helds/:id/edit", to: "helds#edit"

  post "helds/:id/update", to: "helds#update"
  post "helds/:id/destroy", to: "helds#destroy"
  get "helds/:id/show", to: "helds#show"

  get 'participates/index'
  post '/participates', to: 'participates#create'
  post "participates/:id/destroy", to: "participates#destroy"

end
