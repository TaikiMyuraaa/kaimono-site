Rails.application.routes.draw do
  root 'books#index'
  resources :books,:only => [:index,:new,:create,:show,:search] do
    collection do
      get 'search'
    end
  end
  resources :carts,:only => [:index,:new,:create]

end
