class FlixController < ApplicationController

	def index													###########################
		@movies = %w(Iron-Man Superman Spider-Man)
	end
end
