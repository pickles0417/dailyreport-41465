class DailiesController < ApplicationController
  before_action :authenticate_user!, only: [:create]
  def index
    @customer = Customer.find(params[:customer_id])
    @dailies = @customer.dailies
  end

  def new
    @customer = Customer.find(params[:customer_id])
    @daily = Daily.new
  end
  
  def create
    @daily = Daily.create(daily_params)
    redirect_to "/customers/#{@daily.customer.id}"
  end

  private
  def daily_params
    params.require(:daily).permit(:meet_year, :meet_month, :meet_day, :manager_name, :meal_id, :competitor, :text).merge(user_id: current_user.id, customer_id: params[:customer_id])
  end
end
