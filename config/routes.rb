Rails.application.routes.draw do
  get 'cookbooks/index'

  get 'cookbooks/new'

  resources :ingredients
  resources :cookbooks
  # resources :details do
  #   resources :recipes
  # end
  root 'ingredients#index'
end
