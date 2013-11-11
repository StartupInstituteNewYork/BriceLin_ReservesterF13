class Restaurant < ActiveRecord::Base
	belongs_to :owner
	has_many :reservations, dependent: :destroy
	accepts_nested_attributes_for :reservations, allow_destroy: true

	validates :name, :address, presence: true
	validates :name, length: { minimum: 3 }
	validates :name, uniqueness: { case_sensitive: false }
	
	mount_uploader :image, ImageUploader
	mount_uploader :menu, MenuUploader
end
