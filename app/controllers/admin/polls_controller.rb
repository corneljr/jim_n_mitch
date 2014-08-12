class Admin::PollsController < ApplicationController
	layout 'admin'

	def index
		@polls = Poll.order('created_at DESC')
	end

	def new
		@poll = Poll.new
		@poll.options.build
	end

	def create
		binding.pry
		@poll = Poll.new(poll_params)
		if @poll.save
			redirect_to admin_polls_path
		else
			render :new
		end
	end

	def edit
		# @poll = Poll.find(params[:id])
	end

	def update
		@poll = Poll.find(params[:id])
		@poll.update_attributes(poll_params)
		if @poll.save
			redirect_to admin_polls_path
		else
			render :edit
		end
	end

	def show
		@poll = Poll.find(params[:id])
		@options = @poll.options
	end

private

	def poll_params
		params.require(:poll).permit(:question, options_attributes: [:id, :option_text, :_destroy])
	end

end