class WritersController < ApplicationController
	
	def show
	end

	def index
		@writer = params[:writer]
	end
end
