Rails.application.routes.draw do
  devise_for :users
  resources :alchemynews

  get '/alchemynews/keywordsearch', to: 'alchemynews#show'

  root 'welcome#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
