Rails.application.routes.draw do
  
   get 'categories/admin_index'

  get 'static_pages/about'

  get 'dashboard/index'
  


	resources :items
	resources :categories
	resources :orders
	resources :order_items, :only => [:create, :destroy]
	resource  :session,     :only => [:new, :create, :destroy]
	resources :users
	
		# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

	#get 'categories' => 'categories#index'
	#get '/categories/:id' => 'categories#show', as: :category

	#get '/items/:id' => 'items#show', as: :item
	#get '/items/:id/edit' => 'items#edit', as: :edit_item 
	#patch '/items/:id' => 'items#update'

	get 'signup'  => 'users#new', as: :'signup'
	get 'login'  => 'sessions#new', as: :'login'
	post 'login' => 'sessions#create'
	delete 'logout' => 'sessions#destroy'
	get 'checkout' => 'orders#checkout', as: 'checkout'

	get '/' => 'categories#index'
	
end
