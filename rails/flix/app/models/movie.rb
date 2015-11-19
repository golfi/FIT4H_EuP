class Movie < ActiveRecord::Base
	def free?
		self.total_gross.blank? || self.total_gross.zero?
	end
end
