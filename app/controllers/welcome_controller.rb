class WelcomeController < ApplicationController
	def index
		@article = Article.find_by(featured: true)
		unless @article 
			@article = Article.order('created_at DESC').first
		end
	end
end
