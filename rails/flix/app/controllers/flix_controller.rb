class FlixController < ApplicationController

	def index													###########################
		@movies = Movie.upcoming
	end

	def show
		@movie = Movie.find(params[:id])
	end

	def edit
		@movie  = Movie.find(params[:id])		
	end

	def update
		@movie = Movie.find(params[:id])
		if @movie.update(movie_params)
			flash[:notice] = "ist geupdated!"
			redirect_to flix_path(@movie.id)
		else
			render 'edit'
		end
	end

	def new
		@movie =  Movie.new
	end

	def create
		@movie = Movie.new(movie_params)
		if @movie.save
			flash[:notice] = "neu angelegt!"
			redirect_to flix_path(@movie.id)
		else
			render 'new'
		end	
	end

	def destroy
		@movie = Movie.find(params[:id])
		@movie.destroy
		flash[:notice] = "eintrag gelöscht!"
		redirect_to flix_index_path		
	end

	def daten
		@movies  = Movie.all
	end

	private
		def movie_params
			permitted_params = params.require(:movie).permit(:title, :rating, :total_gross, :description, :released_on, :poster_image_file, :cast, :director, :duration)
		end
end
