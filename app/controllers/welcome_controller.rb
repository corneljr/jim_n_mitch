class WelcomeController < ApplicationController
	def index
		@article = Article.find_by(featured: true)
		@articles = Article.where(featured: false).order('created_at DESC').limit(3)
		unless @article 
			@article = Article.order('created_at DESC').first
		end
		@poll = Poll.last
	end
end
