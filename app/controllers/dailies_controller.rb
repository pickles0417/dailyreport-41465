class DailiesController < ApplicationController
  before_action :authenticate_user!, only: [:index, :new,  :create]
  before_action :set_daily, only: [:index, :new]

  def index
    @dailies = @customer.dailies.includes(:user).order("created_at DESC")
  end

  def new
    @daily = Daily.new
  end

  def create
    @customer = Customer.find(params[:customer_id])
    @daily = Daily.new(daily_params)
    if @daily.save
      redirect_to "/customers/#{@daily.customer.id}/dailies"
    else
      render 'new', status: :unprocessable_entity
    end
  end

  private

  def daily_params
    params.require(:daily).permit(:meet_year, :meet_month, :meet_day, :manager_name, :meal_id, :competitor, :text).merge(
      user_id: current_user.id, customer_id: params[:customer_id]
    )
  end

  def set_daily
    @customer = Customer.find(params[:customer_id])
  end
end
