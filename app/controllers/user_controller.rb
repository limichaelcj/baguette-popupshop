class UserController < ApplicationController
  def dashboard
    @user = current_user
    @new_venue = Venue.new(host: @user)
  end
end
