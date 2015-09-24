class CellsController < ApplicationController
  before_action :authenticate_user!

  def index
  end

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
    cell = Cell.first(system: @system, volatile: true)
    if params["remove cells"] != nil
      params["remove cells"].to_i.times do
        cell.destroy
        cell = Cell.first(system: @system, volatile: true)
      end
    elsif
      cell = nil
      flash[:notice] = "no more volatile cells"
    else
      flash[:notice] = "system is too deprecated. incapable of
      activating apoptosis."
    end
      redirect_to edit_system_path(@system)
  end
end
