Rails.application.routes.draw do
  resources :basketballs do
    resources :discussions
  end
  get 'contact', to: 'home#contact'
  post 'request_contact', to: 'home#request_contact'
  get 'basketball', to: 'basketballs#index'
  get '/basketballs/:basketball_id/discussions', to: 'discussions#index'

  root 'home#home'
end
