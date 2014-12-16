Enterpriseape::Application.routes.draw do
  resources :companies do 
    collection { post :import }
  end

  devise_for :users
  get "welcome/index"
  get "welcome/about"
  get "welcome/contact"
  get "welcome/features"
  get "welcome/faq"
  get "welcome/pricing"
  resources :invoices

  root to: 'welcome#index'

end
