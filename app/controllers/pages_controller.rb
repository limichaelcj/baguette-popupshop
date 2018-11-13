class PagesController < ApplicationController
  def home
    redirect_to 'dashboard' if user_signed_in?
  end
end
