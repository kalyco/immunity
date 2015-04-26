class CellsController < ApplicationController
  before_action :authenticate_user!

  def new
    @system = System.find(params[:system_id])
    @cell = Cell.new
  end

  def show
    @system = System.find(params[:system_id])
    @cells = Cell.where(system: @system)
  end

  def create
    system = System.find_by(user: current_user)
    if params["new cells"] != nil
      params["new cells"].to_i.times do
        @cell = Cell.new(system: system)
        @cell.split
    end
      if @cell.save
        system.meta_points -= params["new cells"].to_i
        system.save
        flash[:notice] = "created #{params["new cells"].to_i} new cells"
        redirect_to edit_system_path(system)
      else
        render :new
      end
    else
      @cell = Cell.new(system_id: params[:system_id])
      @cell.split
      if @cell.save
        flash[:notice] = 'cell created'
        redirect_to system_path(system)
      else
        flash[:notice] = 'cell not created.'
        render :new
      end
    end
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
