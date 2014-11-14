class Reservation < ActiveRecord::Base
	belongs_to :restaurant 

	validate :availibility

	private
	def availibilty # need to write a test for this aswell
		unless restaurant.available?(party_size, time)
			errors.add(:base, "No restaurant for you!")
		end
	end
end
