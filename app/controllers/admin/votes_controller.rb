class Admin::VotesController < ApplicationController

	def create
		@vote = Vote.new
		@vote.option_id = params[:choice]
		@vote.save

		if request.xhr?
			render partial: 'poll'
		else
			redirect_to root_path
		end
	end
end