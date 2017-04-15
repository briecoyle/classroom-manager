Rails.application.routes.draw do
  resources :classrooms
  devise_for :users, controllers: { registrations: 'registrations' }
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'welcome#home'
  get '/auth/twitter/callback' => 'sessions#create'
end
