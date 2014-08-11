class Admin::VotesController < ApplicationController

	def create
		@vote = Vote.new
		@vote.option_id = params[:option]
		@vote.save
		redirect_to root_path
	end
end