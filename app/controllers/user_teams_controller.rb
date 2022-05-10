class UserTeamsController < ApplicationController

  def create
    current_user.follow(params[:team_id])
    redirect_to request.referer
  end

  
  def destroy
    current_user.unfollow(params[:team_id])
    redirect_to request.referer
  end


  def followers
    team = Team.find(params[:team_id])
    @teams = team.followers
  end

  
end
