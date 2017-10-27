Rails.application.routes.draw do
  root 'pages#home'

  get '/'

  get 'pages/cuisine'

  get 'pages/cooks'

  get 'pages/order'

  get 'pages/contact'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
