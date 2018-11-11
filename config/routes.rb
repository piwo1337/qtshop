Rails.application.routes.draw do


  get 'gems', to: 'welcome#gems'
  get 'about', to: 'welcome#about'
  get 'contact', to: 'welcome#contact'

  resources :news
  resources :gemposts

  root 'welcome#index'

end
