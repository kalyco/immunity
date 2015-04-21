class InnatesController < ApplicationController
  before_action :authenticate_user!

  def index
    @system = System.find(params[:system_id])
    @cells = Cell.where(system: @system)
    @viri = Virus.where(system: @system)
    @stage = @system.stage
    @first = @system.turn.first
  end
end
