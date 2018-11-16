class ApplicationController < ActionController::Base
  before_action :authenticate_user!, :remote_ip

  include ApplicationHelper
  include Pundit

  # Pundit: white-list approach.
  after_action :verify_authorized, only: %i[new create update destroy], unless: :skip_pundit?

  rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized
  def user_not_authorized
    flash[:alert] = "You are not authorized to perform this action."
    redirect_to(root_path)
  end

  private

  def skip_pundit?
    devise_controller? || params[:controller] =~ /(^(rails_)?admin)|(^pages$)/
  end

  # allow user geolocation by defining IP address
  def remote_ip
    request.remote_ip = '60.237.39.139' if request.remote_ip == '127.0.0.1'
  end
end
