Rails.application.routes.draw do
  devise_for :users
  root to: 'bugs#index'
  resources :bugs
  get 'parser', to: "parser#index"
  post 'parser', to: "parser#import"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
