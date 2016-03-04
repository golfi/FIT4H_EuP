class LikesController < ApplicationController

	before_action :require_signin
	before_action :set_event

	def create
			@event.likers << current_user
			redirect_to @event, notice: "finde ich gut!"
	end

	def destroy
		like = current_user.likes.find(params[:id])
		like.destroy
		redirect_to @event , notice: "mag ich nicht mehr!"
	end
	private
		def set_event
			@event = Event.find(params[:event_id])
		end
end
