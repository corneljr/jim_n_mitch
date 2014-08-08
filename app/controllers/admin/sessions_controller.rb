class Admin::SessionsController < ApplicationController
	layout 'admin'
	
	def new
	end

	def create
		user = User.find_by(username: params[:username])
		if user && user.authenticate(params[:password])
			session[:user_id] = user.id
			redirect_to admin_articles_path, notice: 'successfully signed in'
		else
			flash.now[:alert] = 'invalid username or password'
		end
	end

	def destroy
	end
end
