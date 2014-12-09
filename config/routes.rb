Enterpriseape::Application.routes.draw do
  get "welcome/index"
  get "welcome/about"
  get "welcome/contact"
  get "welcome/features"
  get "welcome/faq"
  get "welcome/pricing"
  resources :invoices

  root to: 'welcome#index'

end
