Rails.application.routes.draw do
  resources :home
  root 'home#index'

  get  '/gotham', to: 'home#gotham'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
