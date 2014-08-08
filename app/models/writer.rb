class Writer < ActiveRecord::Base
	has_many :articles
	mount_uploader :avatar, AvatarUploader
end
