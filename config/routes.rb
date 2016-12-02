Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/jewelry_store' => 'jewelrys#jewelry_method'
  get '/jewelry' => 'jewelrys#index'  #this is the same thing as /jewelry_store *****Use /jewelry_store for most updated version
  get '/jewelry/new' => 'jewelrys#new'
  post '/jewelry' => 'jewelrys#create'
  get '/jewelry/:id' => 'jewelrys#show'
  get '/jewelry/:id/edit' => 'jewelrys#edit'
  patch '/jewelry/:id' => 'jewelrys#update'
  delete '/jewelry/:id' => 'jewelrys#destroy'

  get '/supplier' => 'suppliers#index'

  get '/signup' => 'users#new'
  post '/users' => 'users#create'

  post '/orders' => 'orders#create'
  get '/orders/:id' => 'orders#show'

  get '/cart' => 'carted_jewelries#index'
  post '/cart' => 'carted_jewelries#create'


  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

end
