Gaveideer::Application.routes.draw do
  root :to => "pages#forside"

  match "logud" => "pages#logud"

  resources :onskes

  resources :begivenheds

  resources :brugers

end
