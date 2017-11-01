Rails.application.routes.draw do

  root 'pages#home'

  get 'pages/home'

  get 'pages/cuisine'

  get 'pages/cooks'

  get 'pages/order'

  get 'pages/contact'

  get 'user/profile'

  get 'user/new'

  resources :dishes
  devise_for :users
  resources :user

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
