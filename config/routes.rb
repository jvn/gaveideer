Gaveideer::Application.routes.draw do
  get "loGinz" => "sessions#new", :as => "loGinz"

  root :to => "sessions#new"

  match "logud" => "pages#logud"

  resources :onskes

  resources :begivenheds

  resources :brugers

  resources :sessions
end
