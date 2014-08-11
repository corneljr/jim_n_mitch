class Podcast < ActiveRecord::Base
	mount_uploader :podcast, PodcastUploader
end
