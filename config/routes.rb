Rails.application.routes.draw do
  
  resources :user_stocks, only: [:create, :destroy]
  devise_for :users
  get root 'welcome#index'

  get 'search_stock', to: 'stocks#search'

  get 'my_portfolio', to: 'users#my_portfolio'

end
