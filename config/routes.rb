Rails.application.routes.draw do

  namespace :admin do
    resources :users
    resources :conversations
    resources :dishes
    resources :messages

    root to: "users#index"
  end

  get 'order', to: 'order#show'
  post 'order', to: 'order#add_dish'
  delete 'order', to: 'order#remove_dish'

  root 'pages#home'
  get 'pages/home'
  get 'pages/thankyou', to: 'pages#thankyou'
  get 'pages/cooks'
  get 'pages/order'
  get 'pages/contact'
  get 'stripe/connect', to: 'stripe#connect'
  get 'checkout/thankyou'
  post 'checkout', to: 'checkout#create'
  get '/profile/:id', to: 'pages#profile', as: 'profile'

  resources :dishes
  devise_for :users
  resources :conversations do
    resources :messages
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
