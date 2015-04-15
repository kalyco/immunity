class StagesController < ApplicationController
  before_action :authenticate_user!

  def update
  	binding.pry
  	stage = system_stage.update_attributes
  	respond_to do |format|
      if stage.save
        format.html { redirect_to :back, notice: "We heard your save!" }
        format.json { render json: stage }
      else
        format.html { redirect_to :back }
        format.json { render json: stage.errors, status: :unprocessable_entity }
      end
    end
  end

private

def system_stage
	Stage.find_by(system: params[:system])
end
end 