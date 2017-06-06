Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "publishers#index"
  get  '/signin'  =>  'sessions#new'
  post '/signin' => 'sessions#create'
  get '/signout' => 'sessions#destroy'
  get '/signup' => 'users#new'

  post '/users' => 'users#create'
  get '/users/:id' => 'users#space'
  get '/users/profile/:id' => 'users#profile'
  get '/users/edit/:id' => 'users#edit'
  get '/users/index/:id' => 'users#index'
  patch '/users/:id' => 'users#update'
  
  post '/tweets' => 'tweets#create'
  get  '/tweets/:id/:page' =>'tweets#index'
  delete 'tweets/:id' => 'tweets#destroy'
  
  get  '/followers/:id' => 'followers#index' #following others
  post '/followers' => 'followers#create'
  post '/comments' => 'comments#create'
  
  get  '/admin/signin' => 'sessions#adminNew'
  post '/admin/signin' =>'sessions#adminCreate'
  get  '/admin/manage/:page' => 'admins#manage'
  post '/admin/search' => 'admins#search'
  post '/admin/delete' =>  'admins#delete'

  get  '/admin/signout' => 'sessions#adminDestroy' 
end
