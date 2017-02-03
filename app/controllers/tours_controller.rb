class ToursController < ApplicationController
	
	#require 'initializers/mpower'

	def index
		@tour = Tour.all
	end

	def show
		@tour = Tour.find(params[:id])
	end

	def create

		@tour = Tour.new(tour_params)
		
		# On site invoice

		

		if @tour.save 

			redirect_to @tour

		else
			render 'new'
		end
	end

	def update

		@tour = Tour.find(params[:id])
		
		


		if @tour.update(tour_params)
			
			redirect_to @tour
		
		else
			
			render 'edit'
		end
	end
	
	def delete

	end

	private

	def tour_params
		params.require(:tour).permit(:insider_id, :tourist_id, :activities,:rating)
	end
end
