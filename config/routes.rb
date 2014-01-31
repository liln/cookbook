Cookbook::Application.routes.draw do
  resources :measurements
  resources :ingredients
  resources :recipes

  root :to => "recipes#index"

end
