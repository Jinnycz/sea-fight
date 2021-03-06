class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :update_online

  def update_online
    current_user.try(:update_online)
  end
end
