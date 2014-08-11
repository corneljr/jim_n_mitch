class PodcastsController < ApplicationController

	def index
		@podcasts = Podcast.order('created_at DESC')
	end

end
