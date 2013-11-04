class Restaurant < ActiveRecord::Base
	validates :name, :address, presence: true
	mount_uploader :image, ImageUploader
	mount_uploader :menu, MenuUploader
end
