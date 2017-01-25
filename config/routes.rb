Rails.application.routes.draw do
  resources :products
  resources :orders, only: [:index, :show, :create, :destroy]
  get 'static_pages/about'
  get 'static_pages/contact'
  get 'static_pages/index'
  get 'static_pages/landing_page'
  get 'static_pages/polvo_family'

  root'static_pages#polvo_family'
  root'static_pages#landing_page'
  root'static_pages#index'
  root'static_pages#about' 
  root'static_pages#contact'
  root'static_pages#polvo_family'




  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
