Ref::Application.routes.draw do

  root  to: "home#guest"

  get     "/home" => "home#user",        as: :user_home
  get     "/in"   => "sessions#new",     as: :sign_in
  post    "/in"   => "sessions#create",  as: :new_session
  delete  "/out"  => "sessions#destroy", as: :sign_out
  
  get     "/@:channel" => "channels#show", as: :channel
  
  resources :questions, path: "asks"
  resources :users

end
