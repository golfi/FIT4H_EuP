class Movie < ActiveRecord::Base

	has_many :reviews, dependent: :destroy

	validates :title, :released_on, :duration, :director, presence: true
	validates :description, :length => { minimum: 25 }

	def flop?
		self.total_gross.blank? || self.total_gross < 1000	
	end

	def self.upcoming
		where("released_on >= ?", Time.now).order("released_on")
	end

end
