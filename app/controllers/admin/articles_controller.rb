class Admin::ArticlesController < ApplicationController
	layout 'admin'
	before_action :require_login

	def index
		@articles = Article.order(:created_at)
	end

	def show
		@article = Article.find(params[:id])
	end
end