class CustomersController < ApplicationController
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

  private

  def customer_params
    params.require(:customer).permit(:customer_name, :category_id, :postcode, :prefecture_id, :city, :block, :building, :phone_number, :capacity, contract_id, remarks_column).merge(user_id: current_user.id)
  end
end
