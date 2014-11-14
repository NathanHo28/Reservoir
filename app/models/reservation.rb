class Reservation < ActiveRecord::Base
	belongs_to :restaurant 
	belongs_to :user

	validate :availability

	private
	def availability # need to write a test for this aswell
		unless restaurant.available?(party_size, time)
			errors.add(:base, "No restaurant for you!")
		end
	end
end
