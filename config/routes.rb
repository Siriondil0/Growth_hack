Rails.application.routes.draw do
  resources :home
  root 'home#index'

  get  '/gotham', to: 'home#gotham'
  get '/classic', to: 'home#classic'
  get '/griezmann', to: 'home#griezmann'

  post '/gotham', to: 'home#arkham'
  post '/griezmann', to: 'home#benzema'
  post '/classic', to: 'home#modern'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
