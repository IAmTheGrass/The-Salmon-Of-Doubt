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

root 'pages#welcome'

end
