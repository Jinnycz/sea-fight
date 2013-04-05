class UsersController < ApplicationController

  def index
    @friends = current_user.try(:friends)
    @users = User.order("created_at DESC")
  end

end
