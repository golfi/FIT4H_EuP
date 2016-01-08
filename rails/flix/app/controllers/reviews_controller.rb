class ReviewsController < ApplicationController

	before_action :set_movie

	def index
		@reviews = @movie.reviews
	end

	def new
		@review = @movie.reviews.new
	end

	def create
		@review = @movie.reviews.new(reviews_params)
		if @review.save
			redirect_to flix_path(@movie.id), notice: "Bewertung abgegeben!"
		else
			flash[:alert] = "Du musst eine Bewertung abgegeben?!"
			render "new"
		end
	end

	private

		def reviews_params
			params.require(:review).permit(:name, :stars, :comment)			
		end

		def set_movie
			@movie = Movie.find(params[:flix_id])	
		end
end
