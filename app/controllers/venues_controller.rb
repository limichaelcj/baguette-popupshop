class VenuesController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index show]

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

  def new
    @venue = Venue.new
    authorize @venue
  end

  def create
    @venue = Venue.new(venue_params)
    @venue.host = current_user
    authorize @venue
    @venue.save
    redirect_to dashboard_path
  end

  private

  def venue_params
    params.require(:venue).permit(:name, :address, :description, :price)
  end
end
