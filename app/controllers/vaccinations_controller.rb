class VaccinationsController < ApplicationController
  before_action :find_system, only: :index
  before_action :vaccine, only: :index
  before_action :create_dice_vars, only: :index
  before_action :roll_off, only: :index

  def index
    @vaccination.compare(@c_dice, @v_dice)
  end

  private

  def vaccine
    @vaccination = Vaccination.find_by(system: @system)
  end

  def find_system
    @system = System.find(params[:system_id])
  end

  def create_dice_vars
    @viris = Virus.where(system: @system)
    @cells = Cell.where(system: @system)
    @v_dice = Die.where(virus: @system.viri)
    @c_dice = Die.where(cell: @system.cells)
  end

  def roll_off
    @viris.each do |virus|
      virus.die.initialize_roll
      virus.die.save
    end
    @cells.each do |cell|
      cell.die.initialize_roll
      cell.die.save
    end
  end
end