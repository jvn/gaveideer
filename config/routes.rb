Gaveideer::Application.routes.draw do
  get "sign_up" => "brugers#new", :as => "sign_up"
  root :to => "pages#forside"

  resources :brugers

  resources :onskes

  resources :begivenheds
end
