Rails.application.routes.draw do
	get 'sessions/create'

	get 'sessions/destroy'

	get 'sessions/new'

	get 'users/new'

	get 'items/edit'

	get 'items/show'

	get 'categories/show'

	get 'categories/edit'

	get 'categories/index'

	# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

	get 'categories' => 'categories#index'
	get '/categories/:id' => 'categories#show', as: :category

	get '/items/:id' => 'items#show', as: :item
	get '/items/:id/edit' => 'items#edit', as: :edit_item 
	patch '/items/:id' => 'items#update'

	get 'signup'  => 'users#new', as: :'signup'
	resources :users
	get 'login'  => 'sessions#new', as: :'login'
	post 'login' => 'sessions#create'
	delete 'logout' => 'sessions#destroy'

	get '/' => 'categories#index'
end
