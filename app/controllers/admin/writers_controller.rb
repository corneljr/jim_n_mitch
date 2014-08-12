class Admin::WritersController < ApplicationController
	layout 'admin'
	before_action :require_login

	def new
		@writer = Writer.new
	end

	def edit
		@writer = Writer.find(params[:id])
	end

	def index
		@writers = Writer.all
	end

	def create
		@writer = Writer.new(writer_params)
		if @writer.save 
			redirect_to admin_writers_path
		else
			render :new
		end
	end

	def update
		@writer = Writer.find(params[:id])
		@writer.assign_attributes(writer_params)
		if @writer.save
			redirect_to admin_writers_path, notice: 'writer successfully updated'
		else
			render :edit
		end
	end

private

	def writer_params
		params.require(:writer).permit(:name, :bio, :specialty, :avatar)
	end

end