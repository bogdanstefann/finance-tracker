Rails.application.routes.draw do
  
  devise_for :users
  get root 'welcome#index'

  get 'search_stock', to: 'stocks#search'

  get 'my_portfolio', to: 'users#my_portfolio'

end
