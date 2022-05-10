class FollowsController < ApplicationController

    def create
        follow = current_user.follows.create(team_id: params[:team_id]) 
        redirect_back(fallback_location: root_path)
    end
    
    def destroy
      follow = Follow.find_by(team_id: params[:team_id], user_id: current_user.id)
      follow.destroy
      redirect_back(fallback_location: root_path)
    end

    def edit
      @follow_member = Follow.find_by(team_id: params[:team_id], user_id: params[:user_id])
    end

    def update
      follow_member = Follow.find_by(team_id: params[:team_id], user_id: params[:user_id])
      if follow_member.update(follow_params)
        redirect_to teams_path
      else
      redirect_to :action => "new"
      end
    end



    private
    def follow_params
      params.require(:follow).permit(:position)
    end

end
