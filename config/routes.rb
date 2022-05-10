Rails.application.routes.draw do
  get 'user_teams/followings'
  devise_for :users
  resources :users, only: [:show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'hello/index' => 'hello#index'
  root 'hello#index'
  get 'hello/show' => 'hello#show'
  get 'teams' => 'teams#index'
  get 'teams/new' => 'teams#new'
  post 'teams' => 'teams#create'
  get 'users' => 'users#index'
  get 'users_adm' => 'users#adm'
  post 'team_add_user' =>'team#add_user'
  get 'teams/:id' => 'teams#show' ,as: 'team'
  patch 'teams/:id' => 'teams#update' 
  delete 'teams/:id' => 'teams#destroy'
  get 'teams/:id/edit' => 'teams#edit', as:'edit_team'
  resources :messages, :omly => [:create]
  resources :rooms, :only => [:create, :show]
  get 'rooms/index' => 'rooms#index'

  resources :teams do
    resources :follows, only: [:create, :destroy]
  end
  get 'teams/:team_id/:user_id/follows/edit' => 'follows#edit' ,as: 'edit_follow'
  patch 'teams/:team_id/:user_id/follows/edit' => 'follows#update'

  
end
