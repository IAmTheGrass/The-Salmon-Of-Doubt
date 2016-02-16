Rails.application.routes.draw do

devise_for :users

resources :customers do
  get "delete"
end

resources :products do
  get "delete"
end

resources :onepackages do
  get "delete"
end

resources :sales do
  get "delete"
end

resources :games

get 'welcome' => "pages#welcome"


get 'move' => "games#move"

get 'salescal' => "sales#calculation"
get 'productcal' => "products#calculation"
get 'onepackagecal' => "onepackages#calculation"
get 'customercal' => "customers#calculation"

get 'salesrel' => "sales#relationship"
get 'productrel' => "products#relationship"
get 'onepackagerel' => "onepackages#relationship"
get 'customerrel' => "customers#relationship"

root 'pages#welcome'

end