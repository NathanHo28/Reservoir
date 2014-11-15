class Reservation < ActiveRecord::Base
	belongs_to :restaurant 
	belongs_to :user

<<<<<<< HEAD
	validate :availibility
=======
	validate :availability
>>>>>>> e64646f2b6d849632b6319d63e06387673e308e0

	private
	def availability # need to write a test for this aswell
		unless restaurant.available?(party_size, time)
			errors.add(:base, "No restaurant for you!")
		end
	end
end
