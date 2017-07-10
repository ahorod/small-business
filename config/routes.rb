Rails.application.routes.draw do
  get '/signup' => 'users#new'
  post '/users' => 'users#create'

  get '/signin' => 'sessions#new'
  post '/signin' => 'sessions#create'
  get '/signout' => 'sessions#destroy'

  # products
  resources :products do
    resources :reviews, except: [:index, :show]
  end

  root 'landing#index'
end
