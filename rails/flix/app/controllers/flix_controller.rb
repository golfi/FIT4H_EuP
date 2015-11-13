class FlixController < ApplicationController

	def index													###########################
		@movies = Movie.all
	end
end
