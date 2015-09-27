class CellsController < ApplicationController
  before_action :authenticate_user!
  before_action :find_system

  def index
  end

  def new
    @cell = Cell.new
  end

  def show
    @cells = Cell.where(system: @system)
  end

  def create
    if params["new cells"] != nil
      params["new cells"].to_i.times do |cell|
        cell = Cell.new(system: @system)
        cell.split && cell.save
      end
      @system.meta_points -= params["new cells"].to_i
      @system.save
      flash[:notice] = "created #{params["new cells"].to_i} new cells"
      redirect_to edit_system_path(@system)
    else
      flash[:notice] = 'cell not created.'
      render :new
    end
  end

  def destroy
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

  private

  def find_system
    @system = System.find_by(user: current_user)
  end
end

