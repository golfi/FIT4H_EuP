class FlixController < ApplicationController

	def index													###########################
		@movies = Movie.all
	end

	def show
		@movie = Movie.find(params[:id])
	end

	def edit
		@movie  = Movie.find(params[:id])		
	end

	def update
		@movie = Movie.find(params[:id])
		@movie.update(movie_params)
		redirect_to flix_path(@movie.id)
	end

	def new
		@movie =  Movie.new
	end

	def create
		@movie = Movie.new(movie_params)
		@movie.save
		redirect_to flix_path(@movie.id)		
	end

	def destroy
		@movie = Movie.find(params[:id])
		@movie.destroy
		redirect_to flix_index_path		
	end

	private
		def movie_params
			permitted_params = params.require(:movie).permit(:title, :rating, :total_gross, :description, :released_on)
		end
end
