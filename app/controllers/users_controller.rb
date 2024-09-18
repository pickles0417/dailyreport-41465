class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
  end

  private
  def user_params
    params.require(:user).permit(:last_name, :first_name, :email, :office_name)
  end
end
