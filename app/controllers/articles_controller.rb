class ArticlesController < ApplicationController

	def index
		@articles = Article.order(:created_at)
	end

	def show
		@articles = Article.find(params[:id])
	end
end
