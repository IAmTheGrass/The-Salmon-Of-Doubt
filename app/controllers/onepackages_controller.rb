class OnepackagesController < ApplicationController
	before_action :authenticate_user!

	def index
		@onepackages = Onepackage.all
	end

	def show
    	@onepackage = Onepackage.find(params[:id])
	end

	def new
		@onepackage = Onepackage.new
	end

	def create
		@onepackages = Onepackage.all
		@onepackage = Onepackage.create(onepackage_params)
	end

	def edit
		@onepackage = Onepackage.find(params[:id])
	end

	def update
		@onepackages = Onepackage.all
		@onepackage = Onepackage.find(params[:id])

		@onepackage.update_attributes(onepackage_params)
	end

	def delete
		@onepackage = Onepackage.find(params[:onepackage_id])
	end

	def destroy
		@onepackages = Onepackage.all
		@onepackage = Onepackage.find(params[:id])
		@onepackage.destroy
	end

	private
	def onepackage_params
		params.require(:onepackage).permit(:name, :cost, :product_ida, :type)
	end
end
