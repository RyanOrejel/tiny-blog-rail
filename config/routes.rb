Rails.application.routes.draw do
  root 'articles#index'
  resources :aa_articles
  resources :a_articles
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
