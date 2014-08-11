class Article < ActiveRecord::Base
	belongs_to :writer
	mount_uploader :image, ImageUploader

	def self.update_featured
		Article.all.each do |article|
			article.featured = false
			article.save
		end
	end
end
