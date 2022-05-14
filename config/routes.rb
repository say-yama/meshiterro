Rails.application.routes.draw do
  
  devise_for :users
  root to: 'homes#top'
  get 'homes/about' => 'homes#about', as: 'about'
  
  # get 'users/show'
  # get 'users/edit'
  # get 'post_images/new'
  # get 'post_images/index'
  # get 'post_images/show'
  resources :post_images, only:[:new, :index, :show, :create, :destroy]
  resources :users, only:[:show, :edit, :update]
  
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
 
end
