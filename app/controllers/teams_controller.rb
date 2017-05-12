class TeamsController < ApplicationController
  def index
    @teams = Team.all.order('created_at DESC')
  end

  def new
    @teams = Team.new
  end

  def destroy
    @team = Team.find(params[:id])
    @team.destroy

    redirect_to teams_path
  end

  def create
    @team = Team.new(team_params)

    if
    @team.save
      redirect_to @team
    else
      render 'new'
    end
  end

  def edit
    @team = Team.find(params[:id])
  end

  def update
    @team = Team.find(params[:id])

    if
    @team.update(params[:team].permit(:name, :body))
      redirect_to @team
    else
      render 'edit'
    end
  end

  def show
    @team = Team.find(params[:id])
  end

  private
  def team_params
    params.require(:team).permit(:name, :body, :image)
  end



end
