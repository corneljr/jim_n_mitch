class Admin::BirthdaysController < ApplicationController
	layout 'admin'
	before_action :require_login

	def index
		@birthdays = Birthday.order('created_at DESC')
	end

	def new
		@birthday = Birthday.new
	end

	def create
		@birthday = Birthday.new(birthday_params)
		if @birthday.save
			redirect_to admin_birthdays_path
		else
			render :new
		end
	end

	def edit
		@birthday = Birthday.find(params[:id])
	end

	def update
		@birthday = Birthday.find(params[:id])
		@birthday.assign_attributes(birthday_params)
		if @birthday.save
			redirect_to admin_birthdays_path
		else
			render :edit
		end
	end

private
	
	def birthday_params
		params.require(:birthday).permit(:name, :description)
	end

end