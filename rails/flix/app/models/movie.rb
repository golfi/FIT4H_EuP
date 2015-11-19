class Movie < ActiveRecord::Base
	def flop?
		self.total_gross.blank? || self.total_gross < 1000
	end
end
