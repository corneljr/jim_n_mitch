class Admin::SessionsController < ApplicationController
	layout 'admin'
	
	def new
	end

	def create
		admin = Admin.find_by(username: params[:username])
		if admin && admin.authenticate(params[:password])
			session[:user_id] = admin.id
			redirect_to admin_articles_path, notice: 'successfully signed in'
		else
			flash.now[:alert] = 'invalid username or password'
		end
	end

	def destroy
	end
end
