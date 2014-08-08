class Article < ActiveRecord::Base
	belongs_to :writer
	mount_uploader :image, ImageUploader
end
