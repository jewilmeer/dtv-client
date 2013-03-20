DtvClient::Application.routes.draw do
  resources :series, only: [:index, :show] do
    resources :episodes

    get :search, on: :collection
  end
  resources :pages, only: [:index, :show]

  root :to => 'pages#index'
end
