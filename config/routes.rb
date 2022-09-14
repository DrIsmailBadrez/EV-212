Rails.application.routes.draw do
  devise_for :users, :controllers => { registrations: :registrations }
  root to: "pages#home"
  get "/profile", to: "pages#profile"
  get "/about", to: "pages#about"
  get '/404', to: 'errors#not_found'
  get '/500', to: 'errors#internal_server'
  get '/422', to: 'errors#unprocessable'
  post 'mail/send', to: "pages#sendmail"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :contacts, only: %i[new create]
  resources :stations do
    resources :reviews, only: %i[index new create destroy]
  end
end
