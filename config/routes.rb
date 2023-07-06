Rails.application.routes.draw do
  resources :pins

    devise_scope :user do
    get '/users/sign_out', to: 'devise/sessions#destroy'
  end

  devise_for :users
  root 'home#index'
  get 'home/about'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
