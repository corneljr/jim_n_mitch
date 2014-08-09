class ArticlesController < ApplicationController

	def show
		@article = Article.find(params[:id])
	end

	def sports
		@articles = Article.where(article_type: 'sports')
	end

	def stuff 
		@articles = Article.where(article_type: 'stuff')
	end

end
