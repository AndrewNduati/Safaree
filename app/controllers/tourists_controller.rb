class TouristsController < ApplicationController
	
	def index
		@tourist = Tourist.all
	end

	def show
		@tourist = Tourist.find(params[:id])
	end

	def edit
		@tourist = Tourist.find(params[:id])
	end

	def create
		@tourist = Tourist.new(tourist_params)

		if @tourist.save

			redirect_to @tourist
		else

			render plain: @tourist.errors
		end
	end

	def update
		@tourist = Tourist.find(params[:id])

		if @tourist.update(tourist_params)
			redirect_to @tourist
		else
			render 'edit'
		end
	end

	def delete

	end

	private

	def tourist_params
		params.require(:tourist).permit(:fullname, :email, :telephone)
	end

end
