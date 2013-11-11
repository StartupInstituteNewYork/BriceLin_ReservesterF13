class Reservation < ActiveRecord::Base
	belongs_to :restaurant

	validates :email, :res_date, presence: true
end
