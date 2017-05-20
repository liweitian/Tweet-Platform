Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "publishers#index"
  get  '/signin'  =>  'sessions#new'
  post '/signin' => 'sessions#create'
  get '/signout' => 'sessions#destroy'
  get '/signup' => 'users#new'

  post '/users' => 'users#create'
  get '/users/:id' => 'users#space'
  get '/users/show/:id' => 'users#show'
  get '/users/edit/:id' => 'users#edit'
  get '/users/all/:id' => 'users#all'
  patch '/users/:id' => 'users#update'
  
  post '/tweets' => 'tweets#create'
  post '/followers' => 'followers#create'

end
