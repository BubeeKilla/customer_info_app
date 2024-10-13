class CustomersController < ApplicationController
  def index
    @customers = Customer.all  # Fetch all customers from the database
    @customer = Customer.new    # Initialize a new customer for the form
  end

  def create
    @customer = Customer.new(customer_params)
    if @customer.save
      redirect_to customers_path, notice: 'Customer was successfully created.'
    else
      render :index  # Render index again to show validation errors
    end
  end

  private

  def customer_params
    params.require(:customer).permit(:last_name, :first_name, :birth_date, :email, :address)
  end
end
