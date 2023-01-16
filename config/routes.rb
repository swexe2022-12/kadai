Rails.application.routes.draw do
    post 'top/login'
    get 'top/logout'
    get 'top/login'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    resources :users
    
    root 'top#main'
    get 'top/main'
    get 'top/login'
    post 'products/index'
    get 'get_image/:id', to: 'products#get_image'
    resources :products
    resources :orders
end
