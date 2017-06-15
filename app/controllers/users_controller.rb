class UsersController < ApplicationController
	before_action :is_admin?, only: [:index]
  
	def index
		@users = User.all
	end
	def new
		@user = User.new
	end
  
	def edit 
		@user = User.find(params[:id])
	end
	def show 
		@user = User.find(params[:id])
	end
  
   def create
		@user = User.new(user_params)
		find_or_create_order
		@user.save
		if @user.valid?
		  flash[:notice] = 'New Account Successfully created'
		  session[:user_id] = @user.id 
		  redirect_to categories_path
		else
		  render new_user_path
		end
	end
	
	def update 
		@user = User.find(params[:id]) 
		if @user.update_attributes(user_params)
			redirect_to user_path
			flash[:notice] = 'User Information Updated Successfully'
		else 
			render 'edit'
			flash[:notice] = 'Could not update the User Information'
		end 
	end
	
	def is_admin?
		if current_user && current_user.admin?
		end
	end
	
		
  private
    def user_params
      params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation, :address, :phone)
    end
end
