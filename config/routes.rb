Rails.application.routes.draw do

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  root to: 'users#top'

  resources :users do
    resources :users_skills
  end

  resources :skills
  resources :curriculums

  get '/forms', to: 'forms#index'
  get '/forms/new', to: 'forms#new'
  post '/forms', to: 'forms#create'
  get '/forms/:id/edit', to: 'forms#edit'
  patch '/forms/:id', to: 'forms#update'
  delete '/forms/:id', to: 'forms#destroy'

  get '/reacts', to: 'reacts#index'

end
