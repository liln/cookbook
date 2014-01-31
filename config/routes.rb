Cookbook::Application.routes.draw do
  resources :recipes do
    member do
      get 'ingredients'
    end
  end
  resources :ingredients, except: [:show]

  root :to => "recipes#index"

end
