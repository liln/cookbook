Cookbook::Application.routes.draw do
  resources :recipes do
    member do
      get 'ingredients'
    end
  end
  resources :ingredients

  root :to => 'recipes#index'

end
