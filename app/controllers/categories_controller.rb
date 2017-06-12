class CategoriesController < ApplicationController
	def index 
	  @categories = Category.all 
	end

	def admin_index 
	  @categories = Category.all 
	end

	def show 
	  @category = Category.find(params[:id]) 
	  @items = @category.items 
	end
	def new
		@category = Category.new
	end
	def create
		@category = Category.new(category_params)
		@category.save
		if @category.save
			redirect_to(:action => 'show', :id => @category.id)
			flash.notice = "category created"
		else
			redirect_to categories_path
			flash.notice = "category not created"
		end
	end
	
	def edit 
		@category = Category.find(params[:id])
	end
	
	def update 
		@category = Category.find(params[:id]) 
		if @category.update_attributes(category_params) 
			redirect_to(:action => 'show', :id => @category.id) 
		else 
			render 'edit' 
		end 
	end
	
	def is_admin?
		if current_user && current_user.admin?
		end
	end
	

	
	
	private 
		def category_params 
			params.require(:category).permit(:name, :image, :category_id) 
		end
end