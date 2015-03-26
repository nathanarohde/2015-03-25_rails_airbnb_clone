Rails.application.routes.draw do
  root :to => 'home#index'

  resources :users, :except => [:destroy, :edit, :update]


  get '/log-in' => 'sessions#new'
  post '/log-in' => 'sessions#create'
  get '/log-out' => 'sessions#destroy'

end
