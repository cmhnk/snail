Rails.application.routes.draw do
  devise_for :users
  root to: 'address_books#index'

  # get '/login', to: "auth#new"
  # post '/login', to: "auth#create"

  get '/reset', to: "session#reset"

  resources :contacts do
    collection do
      get '/find/:category', to: "contacts#find_by_address_book"
    end
  end

  resources :address_books do
    collection do
      get '/view/:id', to: "address_books#view"
    end
  end
end
