class EventsController < ApplicationController

	def index ##############################
		@events = Event.upcoming
	end

	def show
		@event = Event.find(params[:id])
		@likers = @event.likers
		if current_user
			@current_like = current_user.likes.find_by(event_id: @event)
		end
	end

	def edit
		@event  = Event.find(params[:id])		
	end

	def update
		@event = Event.find(params[:id])
		if @event.update(event_params)
			flash[:notice] = "gut gespeichert ist halb gewonnen."
			redirect_to event_path(@event.id)
		else
			render "edit"
		end
	end

	def new
		@event =  Event.new
	end

	def create
		@event = Event.new(event_params)
		if @event.save
			flash[:notice] = "gut gespeichert ist halb gewonnen."
			redirect_to event_path(@event.id)
		else
			render "new"
		end
	end

	def destroy
		@event = Event.find(params[:id])
		@event.destroy
		redirect_to events_path		
	end

	def daten
		@events  = Event.all
	end

	private
		def event_params
			permitted_params = params.require(:event).permit(:name, :description, :location, :price, :start_at, :image_file, :capacity)
		end

end
