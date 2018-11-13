class EventsController < ApplicationController
  def create
    @user = current_user
    @venue = params[:venue_id]
    @event = Event.new(event_params)
    @event.artist = @user
    @event.venue = @venue
    @event.booked = true
    @event.save

    redirect_to venue_path(@venue)
  end

  private

  def event_params
    params.require(:event).permit(:date)
  end
end
