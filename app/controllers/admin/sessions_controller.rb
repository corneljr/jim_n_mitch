class Admin::SessionsController < ApplicationController
	layout 'admin'
	
	def new
		if session[:user_id]
			redirect_to admin_articles_path
		end
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
		session[:user_id] = nil
		redirect_to root_path
	end
end
