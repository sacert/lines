Rails.application.routes.draw do
  root 'blog#index'
  
  resources :blog
end
