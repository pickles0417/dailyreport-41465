class CustomersController < ApplicationController
  before_action :authenticate_user!, only: :new
  def index
    @customer = Customer.all.order("created_at DESC")
  end

  def new
    @customer = Customer.new
  end

  def create
    @customer = Customer.new(customer_params)
    if @customer.save
      redirect_to root_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @customer = Customer.find(params[:id])
  end

  def edit
    @customer = Customer.find(params[:id])
  end

  def update
    customer = Customer.find(params[:id])
    customer.update(customer_params)
    redirect_to root_path
  end

  private

  def customer_params
    params.require(:customer).permit(:customer_name, :category_id, :postcode, :prefecture_id, :city, :block, :building, :phone_number, :capacity, :contract_id, :remarks_column)
  end
end
