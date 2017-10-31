Rails.application.routes.draw do
  resources :dishes
  devise_for :users
  root 'pages#home'

  get 'pages/home'

  get 'pages/cuisine'

  get 'pages/cooks'

  get 'pages/order'

  get 'pages/contact'

  get 'user/profile'

  get 'user/dish'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
