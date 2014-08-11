class Admin::ArticlesController < ApplicationController
	layout 'admin'
	before_action :require_login

	def new
		@article = Article.new
	end

	def create
		@article = Article.new(article_params)
		@article.writer_id = Writer.find_by(name: params[:article][:author]).id
		if @article.save
			redirect_to admin_articles_path, notice: 'article successfully created'
		else
			render :new
		end
	end

	def index
		@articles = Article.order('created_at DESC')
	end

	def show
		@article = Article.find(params[:id])
	end

	def edit
		@article = Article.find(params[:id])
	end

	def update
		@article = Article.find(params[:id])
		@article.assign_attributes(article_params)
		if @article.save
			redirect_to admin_articles_path 
		else
			render :edit
		end
	end

	def destroy
		@article = Article.find(params[:id])
		@article.destroy
		redirect_to admin_articles_path
	end

	private

	def article_params
		params.require(:article).permit(:title, :author, :category, :body, :image)
	end

end