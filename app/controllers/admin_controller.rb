class AdminController < ApplicationController
	layout 'admin'
	before_action :require_login

	def new
		@admin = Admin.new
	end

	def create
		@admin = Admin.new(admin_params)
		if @admin.save 
			redirect_to admin_articles_path, notice: 'admin successfully created'
		else
			flash.now[:alert] = 'There was an error creating the admin'
			render :new
		end
	end

	def edit
	end

	private

	def admin_params
		params.require(:admin).permit(:username, :password, :password_confirmation)
	end

end
