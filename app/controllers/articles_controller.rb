class ArticlesController < ApplicationController

	def show
		@article = Article.find(params[:id])
	end

	def sports
	end

	def stuff 
	end

end
