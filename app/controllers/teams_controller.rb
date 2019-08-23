class TeamsController < ApplicationController


  def index
    @team = Team.all
  end

  def new
    @team = Team.new
    
  end

  def create
    @team = Team.create(team_params)
    redirect_to root_path
  end


  private 

  def team_params
    params.require(:team).permit(:name)
  end
end
