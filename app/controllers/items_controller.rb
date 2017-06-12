class ItemsController < ApplicationController
		before_action :is_admin?, :except => [:index, :create]
	
	
	def index
		@items = Item.all
	end

	def show
		@item = Item.find(params[:id])
	end
	
	def new
		@item = Item.new
	end
	
	def create
		@item = Item.new(item_params)
		@item.save
		if @item.save
			redirect_to(:action => 'show', :id => @item.id)
			flash.notice = "item created"
		else
			redirect_to items_path
			flash.notice = "item not created"
		end
	end
	
	def edit 
		@item = Item.find(params[:id])
	end
	
	def update 
		@item = Item.find(params[:id]) 
		if @item.update_attributes(item_params) 
			redirect_to(:action => 'show', :id => @item.id) 
		else 
			render 'edit' 
		end 
	end
	
	def is_admin?
		if current_user && current_user.admin?
		end
	end
	

	
	
	private 
		def item_params 
			params.require(:item).permit(:name, :image, :price, :category_id) 
		end
end
