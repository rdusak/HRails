Rails.application.routes.draw do
  resources :articles do
    resources :comments
  end
  devise_for :users, :controllers => { registrations: 'registrations' } 
  ## needed for signing out
  devise_scope :user do
  get '/users/sign_out' => 'devise/sessions#destroy'
end
  root to: 'pages#index'
  get 'pages/about'
  get 'pages/contact'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
