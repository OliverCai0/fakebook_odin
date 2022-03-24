class UsersController < ApplicationController
  def index
     @selected_users = User.find_by(username: params[:username])
     @users_all = User.all

     @friend_status = FriendRequest.where(["(sender_id = ? and receiver_id = ?) or 
                              (receiver_id= ? and sender_id = ?)",
                              current_user.id, @selected_users.id,
                              @selected_users.id, current_user.id
                            ])
     render "dashboards/show"
  end

  def create
  end

  def new
  end

  protected 

  def configure_search_params
    params.require(:user).permit(:username)
  end
end
