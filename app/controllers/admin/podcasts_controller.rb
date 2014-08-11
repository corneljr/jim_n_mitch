class Admin::PodcastsController < ApplicationController
	layout 'admin'

	def new
		@podcast = Podcast.new
	end

	def create
		@podcast = Podcast.new(podcast_params)
		if @podcast.save
			redirect_to admin_podcasts_path
		else
			render :new
		end
	end

	def index
		@podcasts = Podcast.order('created_at DESC')
	end

	def edit
		@podcast = Podcast.find(params[:id])
	end

	def update
		@podcast.assign_attributes(podcast_params)
		if @podcast.save
			redirect_to admin_podcasts_path
		else
			render :edit
		end
	end

private

	def podcast_params
		params.require(:podcast).permit(:title, :podcast_file)
	end

end