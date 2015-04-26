class InnatesController < ApplicationController
  before_action :authenticate_user!

  def index
    @system = System.find(params[:system_id])
    @cells = Cell.where(system: @system)
    @viri = Virus.where(system: @system)
    @stage = @system.stage
    @evens = evens
  end

  def evens
    x = 0
    a = []
    16.times do
      a << x
      x += 2
    end
    a
  end
end
