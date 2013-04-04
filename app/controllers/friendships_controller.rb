class FriendshipsController < ApplicationController

  def create
    current_user.friendships.create friend_id: params[:id]
    if params[:return_url].nil?
      redirect_to params[:return_url]
    else
      redirect_to users_path
    end
  end
end
