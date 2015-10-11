class VaccinationsController < ApplicationController
  before_action :find_system, only: :index
  before_action :vaccine, only: :index
  before_action :create_dice_vars, only: :index

  def index
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
  end
end