Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  root to: 'users#top'

  resources :users do
    resources :user_programmings
  end

  get '/users/user_programmings/search', to: 'user_programmings#search', as: 'search'
  post '/users/user_programmings/search', to: 'user_programmings#search'

end
