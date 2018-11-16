class EventsController < ApplicationController

  def create
    @user = current_user
    @event = Event.new(event_params)
    @event.date = params[:date]
    @event.artist = @user
    @event.booked = true
    @venue = @event.venue
    if @event.save
      respond_to do |format|
        format.html { redirect_to venue_path(@venue) }
        format.js  # <-- will render `app/views/reviews/create.js.erb`
      end
    else
      respond_to do |format|
        format.html { render venue_path(@venue) }
        format.js  # <-- idem
      end
    end
  end

  private

  def event_params
    params.permit(:date, :venue_id)
  end
end
