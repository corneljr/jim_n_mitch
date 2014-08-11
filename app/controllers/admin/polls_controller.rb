class Admin::PollsController < ApplicationController

	def index
		@polls = Poll.order('created_at DESC')
	end

	def new
		@poll = Poll.new
		@poll.options.build
	end

	def create
		@poll = Poll.new(poll_params)
	end

	def edit
	end

	def update
	end

private

	def poll_params
		params.require(:poll).permit(:question)
	end

end