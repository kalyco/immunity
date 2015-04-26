class ViriController < ApplicationController

  def index
    @system = System.find(params[:system_id])
    @viri = Virus.where(system: @system)
    @turn = @system.turn
  end

  def new
    @virus = Virus.new
  end

  def create
    @virus = Virus.new(virus_params)
    if @virus.save
      flash[:notice] = 'virus created'
      redirect_to '/system'
    else
      flash[:notice] = 'virus not created.'
      render :new
    end
  end
end
