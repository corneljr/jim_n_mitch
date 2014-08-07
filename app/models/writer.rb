class Writer < ActiveRecord::Base
	mount_uploader :avatar, AvatarUploader
end
