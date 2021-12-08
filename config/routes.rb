Rails.application.routes.draw do

  resources :categories
  devise_for :users
  resources :posts do
    resources :commentts
    resources :likes
  end
  
  get 'promo', to: 'promo#index'
  get 'about', to: 'about#index'
  
  get 'admin/index'
  get 'main/index'
	get 'posts/index'

  
  root 'posts#index'
  
 
  
end
