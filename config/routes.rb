Rails.application.routes.draw do
  root to: 'users#show'

  get '/login', to: "auth#new"
  post '/login', to: "auth#create"

  get '/reset', to: "session#reset"

  resources :users do
    collection do
      get '/find/:category', to: "users#find_by_address_book"
    end
  end

  resources :address_books, only: [:index] do
    collection do
      get '/view/:id', to: "address_books#view"
    end
  end
end
