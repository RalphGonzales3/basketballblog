Rails.application.routes.draw do
  resources :basketballs do
    resources :discussions
  end
  get 'contact', to: 'home#contact'
  post 'request_contact', to: 'home#request_contact'
  get 'basketball', to: 'basketballs#index'

  root 'home#home'
end
