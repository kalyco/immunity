class DiceController < ApplicationController
  before_action :authenticate_user!

  def index
  end

  def new
    @die = Die.new
  end

  def create
    @die = Die.create(die_params)
  end

  private

  def die_params
    params.require(:die).permit(:win, :roll)
  end
end
