class ItemsController < ApplicationController
  def index
	end

	def show
		@item = Item.find(params[:id])
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