class VenuesController < ApplicationController
    def index
      @venues = Venue.all
    end

    def show
      @venue = Venue.find(params[:id])
      @event = Event.new
      gon.booked_events = Event.where(venue: @venue).map(&:date)
    end
end
