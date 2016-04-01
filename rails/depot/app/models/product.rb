class Product < ActiveRecord::Base

	validates :title, presence: true, uniqueness: { case_sensitiv: false }
	validates_numericality_of :price, presence: true, :greater_than => 0
	validates :description, :length => { minimum: 25 }
	validates :image_url,
		format: { with: /\w+\.(gif|jpg|png|jpeg)\z/i, message: "Dateiformat muss jpg,gif,png sein" }

	def free?
		self.price.blank? || self.price.zero?
	end

end
