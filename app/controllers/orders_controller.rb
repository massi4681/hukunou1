class OrdersController < ApplicationController
    before_action :authenticate_user!
	def create
    @order = Order.new(item_id_params.merge(user_id:current_user.id))
    @order.save
		redirect_to orders_thanks_path
	end

  def thanks
  end

  def index
    @orders = Order.where(user_id: current_user.id)
  end

   private
  def item_id_params
    params.permit(:item_id)
  end

end


