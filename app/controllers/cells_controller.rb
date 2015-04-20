class CellsController < ApplicationController
  def new
    10.times do
      Cell.new
    end
  end

  def create
    @cell = Cell.new(cell_params)
    if @cell.save
      flash[:notice] = 'cell created'
      redirect_to '/system'
    else
      flash[:notice] = 'cell not created.'
      render :new
    end

    def destroy
      @system = System.find_by(user: current_user)
      @cells = Cell.where(system: @system, status: "antigen")
      unless @system.apoptosis == 0
        @cells.destroy
        flash[:notice] = "you have destroyed all 'self' antigens."
        redirect_to systems_path(@system)
      else
        flash[:notice] = "system is too deprecated. incapable of
        activating apoptosis."
        redirect_to systems_path(@system)
      end
    end
  end
end
