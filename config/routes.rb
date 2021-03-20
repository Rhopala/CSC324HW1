 Rails.application.routes.draw do
  root 'static_pages#home'
  get '/signup', to: 'users#new'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  get '/help', to: 'static_pages#help'
  get '/about', to: 'static_pages#about'
  get '/contact', to: 'static_pages#contact'
  get '/american_robin', to: 'static_pages#american_robin'
  get '/barred_owl', to: 'static_pages#barred_owl'
  get '/bumblebee', to: 'static_pages#bumblebee'
  get '/cicada', to: 'static_pages#cicada'
  get '/common_grakele', to: 'static_pages#common_grakele'
  get '/eagle', to: 'static_pages#eagle' 
  get '/firefly', to: 'static_pages#firefly'
  get '/grasshopper', to: 'static_pages#grasshopper'
  get '/house_sparrow', to: 'static_pages#house_sparrow'
  get '/northern_cardinal', to: 'static_pages#northern_cardinal'
  get '/rabbit', to: 'static_pages#rabbit'
  get '/squirrel', to: 'static_pages#squirrel'
  
  resources :users do  
    member do
      get :following, :followers
    end
  end
  resources :microposts,         only: [:create, :destroy]
  resources :relationships, only: [:create, :destroy]
# For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html 
end

