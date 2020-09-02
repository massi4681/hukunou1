class ItemsController < ApplicationController
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
    @item.user_id = current_user.id
  	@item.save
  	redirect_to items_path
  end

  def edit
    @item = Item.find(params[:id])
  end

  def update
    @item = Item.find(params[:id])
    @item.update(item_params)
    redirect_to users_mypage_path
  end

  def destroy
    @item = Item.find(params[:id])
    @item.destroy
    redirect_to users_mypage_path
  end

   private
  def item_params
    params.require(:item).permit(:image,:item_name,:work_period,:introduction,:people,:salary,:work_time,:payment,:place)
  end
end

