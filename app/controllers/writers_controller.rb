class WritersController < ApplicationController

	def index
		@writers = Writer.all
	end
	
	def show
		@writer = Writer.find(params[:id])
		@articles = Article.where(writer_id: params[:id])
	end
end
