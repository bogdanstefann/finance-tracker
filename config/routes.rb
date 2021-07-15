Rails.application.routes.draw do
  
  devise_for :users
  get root 'welcome#index'

end
