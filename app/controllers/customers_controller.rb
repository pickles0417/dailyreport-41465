class CustomersController < ApplicationController
  before_action :authenticate_user!, only: [:show, :edit, :update, :destroy, :new]
  before_action :set_customer, only: [:show, :edit, :update, :destroy]
  def index
    @customer = Customer.includes(:user).order("created_at DESC")
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
    @daily = Daily.new
    @dailies = @customer.dailies.includes(:user)
  end

  def search
    @customer = Customer.search(params[:keyword])
  end

  def edit
  end

  def update
    if @customer.update(customer_params)
      redirect_to @customer
    else
      render :edit
    end
  end

  def destroy
    @customer.destroy
    redirect_to root_path
  end

  private

  def customer_params
    params.require(:customer).permit(:customer_name, :category_id, :postcode, :prefecture_id, :city, :block, :building, :phone_number, :capacity, :contract_id, :remarks_column).merge(user_id: current_user.id)
  end

  def set_customer
    @customer = Customer.find(params[:id])
  end
end
