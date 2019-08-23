class TeamsController < ApplicationController


  def index
    @team = Team.all
  end

  def new
    @team = Team.new
    redirect_to root_path
  end

  def create
    @team = Team.create(team_params)
  end


  private 

  def team_params
    params.require(:team).permit(:name)
  end
end
