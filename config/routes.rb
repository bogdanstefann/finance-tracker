Rails.application.routes.draw do
  
  resources :user_stocks, only: [:create, :destroy]
  resources :friendships, only: [:create, :destroy]

  devise_for :users
  get root 'welcome#index'

  get 'search_stock', to: 'stocks#search'
  get 'search_friend', to: 'users#search'

  get 'my_portfolio', to: 'users#my_portfolio'
  get 'my_friends', to: 'users#my_friends'

  resources :users, only: [:show]

end
