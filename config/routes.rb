Enterpriseape::Application.routes.draw do
  #resources :purchases

  resources :employees

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

  resources :invoices do
    resources :purchases, except: [:index], controller: 'invoices/purchases'
  end
  
  root to: 'welcome#index'

end
