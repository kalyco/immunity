class StagesController < ApplicationController
  before_action :authenticate_user!

  def edit
    @stage = system_stage
  end

  def update
    stage = system_stage
    system = stage.system
    # respond_to do |format|
    if stage.save
      flash[:notice] = "updated"
      redirect_to system_path(stage.system)
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
  def system_stage
  	Stage.find_by(system_id: params[:system_id])
  end
end
