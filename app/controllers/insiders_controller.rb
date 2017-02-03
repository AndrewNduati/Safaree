class InsidersController < ApplicationController
	
	def index
		@insider = Insider.all
	end

	def show
		@insider = Insider.find(params[:id])
	end

	def create
		@insider = Insider.new(insider_params)
		
		if @insider.save 

			redirect_to @insider

		else
			render 'new'
		end
	end

	def update

		@insider = Insider.find(params[:id])

		if @insider.update(insider_params)
			
			redirect_to @insider
		
		else
			
			render 'edit'
		end
	end
	
	def delete

	end
	def insider_params
		params.require(:insider).permit(:fullname, :national_id, :email, :telephone, :price)
	end

end
