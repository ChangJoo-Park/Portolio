BnegajiForum::Application.routes.draw do

  resources :static_pages
  resources :users
  resources :sessions, only: [:new, :create, :destroy]
  resources :comments, :only => [:new, :create]
  resources :forums do
    resources :topics
  end
  get "users/new"
  root to:"static_pages#home"

  #여기는 resources 추가가 필요한 부분
  #this code is needed resources :static_pages
  match '/help', to: "static_pages#help"
  match '/about', to: "static_pages#about"
  match '/contact', to: "static_pages#contact"


  match '/signup',  to: 'users#new'
  match '/signin',  to: 'sessions#new'
  match '/signout', to: 'sessions#destroy', via: :delete
end
