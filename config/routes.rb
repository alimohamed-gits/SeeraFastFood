Rails.application.routes.draw do
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
end
