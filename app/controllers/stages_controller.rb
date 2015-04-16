class StagesController < ApplicationController
  before_action :authenticate_user!

  def edit
    @stage = Stage.find(params[:id])
  end

  def update
    @stage = Stage.find(params[:id])
    @system = @stage.system
    # respond_to do |format|
    if @stage.update(stage_params)
      flash[:notice] = "updated"
      redirect_to system_path(@stage.system)
      # format.html { redirect_to :back, notice: "We heard your save!" }
      # format.json { render json: stage }
    else
      # format.html { redirect_to :back }
      # format.json { render json: stage.errors, status: :unprocessable_entity }
      flash[:notice] = "not saved"
      render :edit
    # end
    end
  end

private

  def stage_params
    params.require(:stage).permit(:cytokines, :phagocytes, :macromolecules)
  end

  def system_stage
  	Stage.find_by(system_id: params[:system_id])
  end
end