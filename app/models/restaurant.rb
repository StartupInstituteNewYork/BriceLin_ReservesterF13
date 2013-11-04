class Restaurant < ActiveRecord::Base
	validates :name, :address, presence: true
	mount_uploader :image, ImageUploader
end
