class VenuesController < ApplicationController
  def index
    @venues = Venue.all
    @venues = Venue.where.not(latitude: nil, longitude: nil)
    @markers = @venues.map do |venue|
      { lng: venue.longitude, lat: venue.latitude }
    end
  end

  def show
    @venue = Venue.find(params[:id])
    @event = Event.new
    gon.booked_events = Event.where(venue: @venue).map(&:date)
    gon.venue_name = @venue.name
    # the markers array only has one marker
    @markers = [{ lng: @venue.longitude, lat: @venue.latitude }]
  end
end
