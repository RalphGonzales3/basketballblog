Rails.application.routes.draw do
  resources :basketballs
  get 'contact', to: 'home#contact'
  post 'request_contact', to: 'home#request_contact'

  root 'home#home'
end
