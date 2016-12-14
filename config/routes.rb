Rails.application.routes.draw do
  get 'welcome/home'

  get 'welcome/contact'

  get 'welcome/about'

  get 'welcome/faq'

  get 'welcome/features'

  get 'welcome/pricing'

  get 'welcome/login'

  resources :cashouts

  root to: 'cashouts#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
