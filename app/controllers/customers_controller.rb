class CustomersController < ApplicationController
	before_action :authenticate_user!

	def index
		@customers = Customer.all
	end

	def show
    	@customer = Customer.find(params[:id])
	end

	def new
		@customer = Customer.new
	end

	def create
		@customers = Customer.all
		@customer = Customer.create(customer_params)
	end

	def edit
		@customer = Customer.find(params[:id])
	end

	def update
		@customers = Customer.all
		@customer = Customer.find(params[:id])

		@customer.update_attributes(customer_params)
	end

	def delete
		@customer = Customer.find(params[:customer_id])
	end

	def destroy
		@customers = Customer.all
		@customer = Customer.find(params[:id])
		@customer.destroy
	end

	def calculation
		@customers = Customer.all
	end

	def relationship
		@customers = Customer.all
	end

	private
	def customer_params
		params.require(:customer).permit(:name, :company, :userClass)
	end

end
