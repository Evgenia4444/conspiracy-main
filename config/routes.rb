Rails.application.routes.draw do

  resources :categories
  devise_for :users
  resources :posts do
    resources :commentts
    resources :likes
  end
  
  get 'promo', to: 'promo#index'
  get 'about', to: 'about#index'
  get 'users', to: 'users#index'
  get 'users/:id' => 'users#show', :as => :user
  delete 'users/:id', to: 'users#destroy'
  
  get 'admin/index'
  get 'main/index'
	get 'posts/index'

  
  root 'posts#index'
  
 
  
end
