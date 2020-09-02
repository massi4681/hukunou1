class OrdersController < ApplicationController
	def create
		@item =Item.new(item_params)
		@item.save
		redirect_to orders_thanks_path
	end
  def thanks

  end

  def index
    @orders = current_user
  end

   private
  def item_params
    params.require(:item).permit(:image,:item_name,:work_period,:introduction,:people,:salary,:work_time,:payment,:place)
  end

end

