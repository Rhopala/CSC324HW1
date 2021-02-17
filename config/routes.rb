 Rails.application.routes.draw do
  get '/signup', to: 'users#new'
  root 'static_pages#home'
  get 'static_pages/roll'
  get 'static_pages/home'
  get 'static_pages/help'
  get 'static_pages/about'
 # resources :creatures
  resources :users

# For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html 
end

