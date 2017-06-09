class ItemsController < ApplicationController
	before_action :require_admin, only: [:edit :index]
	
	
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
		item = Item.create(item_params)
		item.save

		redirect_to items_path
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

	private 
		def item_params 
			params.require(:item).permit(:name, :description) 
		end
end
