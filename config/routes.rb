Rails.application.routes.draw do
  root to: 'users#show'

  get '/login', to: "auth#new"
  post '/login', to: "auth#create"

  get '/reset', to: "session#reset"

  resources :users
  resources :address_books, only: [:index] do
    collection do
      get '/view/:id', to: "address_books#view"
    end
  end
end
