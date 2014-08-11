class Podcast < ActiveRecord::Base
	mount_uploader :podcast_file, PodcastUploader
end
