class UpdatePodcastNamePodcasts < ActiveRecord::Migration
  def change
  	rename_column :podcasts, :podcast, :podcast_file
  end
end
