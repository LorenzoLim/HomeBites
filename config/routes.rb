Rails.application.routes.draw do

  root 'pages#home'

  get 'pages/home'

  get 'pages/cooks'

  get 'pages/order'

  get 'pages/contact'

  get 'pages/profile'

  resources :dishes
  devise_for :users
  resources :conversations do
    resources :messages
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
