class OrdersController < ApplicationController

  def index
  	if !current_user
        flash.notice = 'You need to sign in to view past orders'
        redirect_to new_session_path
    elsif !current_user.admin?
        @orders = current_user.orders.where(status: 'completed')
    else
        @orders = Order.all
    end
  end

  def show
    if current_user && !current_user.admin?
	     @order = current_order
    elsif current_user.admin?
       @order = Order.find(params[:id])
    else
    end
  end

  def edit 
      @order = Order.find(params[:id])
  end
  
  def update 
    @order = Order.find(params[:id]) 
    if @order.update_attributes(order_params) 
      redirect_to(:action => 'edit', :id => @order.id) 
    else 
      render 'edit' 
    end 
  end

  
  def checkout
    if session[:user_id]
      @order = Order.find(current_order)
      @order.update(status: "completed")
      flash.notice = "Order Completed"
      session[:order_id] = nil
      find_or_create_order
      redirect_to categories_path
    else
      flash.notice = "You need to sign in first!"
      redirect_to new_session_path
    end
  end

  private 
    def order_params 
      params.require(:order).permit(:user_id, :order_id) 
    end
end
