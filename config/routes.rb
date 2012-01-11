Gaveideer::Application.routes.draw do
  root :to => "pages#forside"

  resources :brugers

  resources :onskes

  resources :begivenheds
end
