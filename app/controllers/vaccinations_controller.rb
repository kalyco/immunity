class VaccinationsController < ApplicationController
  before_action :find_cells, :vaccine, only: :index

  def index
  end

  private

  def find_cells
    @cells = Cell.where(system: params[:system_id])
  end 

  def vaccine
    @vaccination = Vaccination.find_by(system: params[:system_id])
  end
end
