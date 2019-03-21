Rails.application.routes.draw do
  get 'recipes/new', to: 'recipes#new'
  post 'recipes', to: 'recipes#create', as: '-'
  get 'recipes', to: 'recipes#index', as: 'recipes'
end
