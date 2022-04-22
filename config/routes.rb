Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get 'bugs', to: 'bugs#index'
  get 'bugs/new', to: "bugs#new"
  post 'bugs', to: "bugs#create"
  get 'bugs/:id', to: "bugs#show", as: :bug
  get 'parser', to: "parser#index"
  post 'parser', to: "parser#parse"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
