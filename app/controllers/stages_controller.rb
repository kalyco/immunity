class StagesController < ApplicationController
  before_action :authenticate_user!

  def edit
    @stage = Stage.find(params[:id])
  end

  def update
    @system = System.find(params[:system_id])
    @stage = Stage.find(params[:id])
    @system = @stage.system
    if @stage.update(stage_params)
      @system.meta_score
      redirect_to system_path(@stage.system)
    else
      flash[:notice] = "not updated"
      render :edit
    end
  end

private

  def stage_params
    params.require(:stage).permit(:cytokines, :phagocytes, :macromolecules, :name)
  end

  def system_stage
  	Stage.find_by(system_id: params[:system_id])
  end
end
