class SalesController < ApplicationController
	before_action :authenticate_user!
	def index
		@sales = Sale.all
	end

	def show
    	@sale = Sale.find(params[:id])
	end

	def new
		@sale = Sale.new
	end

	def create
		@sales = Sale.all
		@sale = Sale.create(sale_params)
	end

	def edit
		@sale = Sale.find(params[:id])
	end

	def update
		@sales = Sale.all
		@sale = Sale.find(params[:id])

		@sale.update_attributes(sale_params)
	end

	def delete
		@sale = Sale.find(params[:sale_id])
	end

	def destroy
		@sales = Sale.all
		@sale = Sale.find(params[:id])
		@sale.destroy
	end

	private
	def sale_params
		params.require(:sale).permit(:transactionnum, :package_id, :customer_id)
	end
end
