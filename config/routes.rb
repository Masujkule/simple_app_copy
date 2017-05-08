Rails.application.routes.draw do
 

  ActiveAdmin.routes(self)
  devise_for :users
  resources :users
  resources :articles 
  resources :products do
  resources :comments
  resources :charge
  end

  resources :orders, only: [:index, :show, :create, :destroy]
  get 'static_pages/home'
  get 'static_pages/team'
  get 'static_pages/polvo_people'
  get 'static_pages/news'
  get 'static_pages/contact'
  get 'static_pages/order_surfboard'
	
	post 'static_pages/thank_you'
  post 'payments/create'

  root'static_pages#landing_page'
  




  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
