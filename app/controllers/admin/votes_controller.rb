class Admin::VotesController < ApplicationController

	def create
		@vote = Vote.new
		@vote.option_id = params[:choice]
		@vote.save
		@poll = Option.find(@vote.option_id).poll

		if request.xhr?
			render partial: 'poll'
		else
			redirect_to root_path
		end
	end
end