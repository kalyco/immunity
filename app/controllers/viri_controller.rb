class ViriController < ApplicationController

  def index
    binding.pry
    @system = System.find(params[:id])
    @viruses = Virus.where(system: @system)
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
