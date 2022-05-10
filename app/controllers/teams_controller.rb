class TeamsController < ApplicationController

def index
    @teams = Team.all
end


before_action :authenticate_user!

def index
    if params[:search]  == nil && params[:searches] == nil
        @teams= Team.all.page(params[:page]).per(10)
    elsif params[:search]  == '' && params[:searches] == ''
        @teams= Team.all.page(params[:page]).per(10)
    elsif params[:search] == ''
        @teams= Team.where(thole: params[:searches]).page(params[:page]).per(10)
    elsif params[:search]  != '' && params[:searches] != ''
        @teams= Team.where(teve: params[:search], thole: params[:searches]).page(params[:page]).per(10)
    else 
        @teams= Team.where(teve: params[:search]).page(params[:page]).per(10)
   
    end


end

def new
    @team = Team.new
end

def create
    team = Team.new(team_params)

    team.user_id = current_user.id

    if team.save
        redirect_to :action => "index"

    else
        redirect_to :action => "new"
    end

end

def show
    @team = Team.find(params[:id])
    @lead = Follow.find_by(team_id: params[:id], position: 'リード')
    @second = Follow.find_by(team_id: params[:id], position: 'セカンド')
    @third = Follow.find_by(team_id: params[:id], position: 'サード')
    @forth = Follow.find_by(team_id: params[:id], position: 'フォース')
    @alter1= Follow.find_by(team_id: params[:id], position: 'リザーブ1')
    @alter2= Follow.find_by(team_id: params[:id], position: 'リザーブ2')
    @coach= Follow.find_by(team_id: params[:id], position: 'コーチ')

end

def edit
    @team = Team.find(params[:id])
end

def update
    team = Team.find(params[:id])
    if team.update(team_params)
        redirect_to :action => "show", :id => team.id
    else
        redirect_to :action => "new"
    end

end


def destroy
    team = Team.find(params[:id])
    team.destroy
    redirect_to action: :index
end








private
def team_params
    params.require(:team).permit(:tname, :teve, :thole, :tassoci, :tfrequ, :tcomme, :timage, :tstatus)
end

end
