class UsersController < ApplicationController

  def index
    @friends = current_user.friends
    @users = User.order("created_at DESC")
  end

end
