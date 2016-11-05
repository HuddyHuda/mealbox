Rails.application.routes.draw do
  resources :ingredients
  resources :cookbooks do
    resources :recipes
  end
  root 'ingredients#index'
end
