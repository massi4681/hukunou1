  class UsersController < ApplicationController
    before_action :authenticate_user!
  def show
  	@user = current_user
    @items = @user.items
  end

  def edit
  	@user = current_user
  end

  def update
  	@user = current_user
  	@user.update(user_params)
  	redirect_to users_mypage_path
  end

private
  def user_params
    params.require(:user).permit(:name, :postal_code, :adress, :telephone_number, :email)
  end
end

