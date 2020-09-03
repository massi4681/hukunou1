class OrdersController < ApplicationController
	def create
    @order = Order.new(user_id:current_user.id, item_id:item_id_params[:item_id])
    @order.save
		redirect_to orders_thanks_path
	end
  def thanks
  end

  def index
    @orders = Order.all
  end

   private
  def item_id_params
    params.permit(:item_id)
  end

end

