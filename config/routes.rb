Rails.application.routes.draw do
  root to: 'users#show'

  get '/login', to: "auth#new"
  post '/login', to: "auth#create"

  get '/reset', to: "session#reset"

  resources :contacts do
    collection do
      get '/find/:category', to: "contacts#find_by_address_book"
    end
  end

  resources :address_books, only: [:index, :create] do
    collection do
      get '/view/:id', to: "address_books#view"
    end
  end
end
