class SystemsController < ApplicationController
  before_action :authenticate_user!
  before_filter :check_innate_stage, only: :show

  def show
    @system = System.find(params[:id])
    @systems = System.where(id: params[:id])
    @cells = Cell.where(system: @system)
    @viri = Virus.where(system: @system)
    @stage = @system.stage
    @turn = Turn.where(system: @system)
  end

  def new
    @system = System.new
  end

  def create
    if user_system == nil
      @system = System.create(system_params)
      @system.creation(current_user)
      if @system.save
        flash[:success] = "this one's name is
        #{Faker::Name.first_name}. keep it safe. good luck."
        redirect_to system_path(@system)
      else
        render :new
      end
    else redirect_to system_path(user_system)
    end
  end

  def edit
    @system = user_system
    @cells = Cell.where(system: @system)
    @cell = Cell.new
    @turn = Turn.find_by(system: @system)
    render 'edit_page'
  end

  def update
    @system = user_system
    @stage = @system.stage
    @turn = @system.turn
    @turn.update(turn_params)
    redirect_to system_path(@system)
  end

  def destroy
    @system = System.find(params[:id])
    @system.destroy
    flash[:notice] = 'disease is immunodeficient. system shut down'
    redirect_to root_path
  end

  private

  def user_system
    System.find_by(user: current_user)
  end

  def check_innate_stage
    @system = System.find(params[:id])
    redirect_to system_innates_path(@system) if @system.stage.name == "innate"
  end

  def turn_params
    params.require(:turn).permit(:player, :order)
  end

  def system_params
    unless params[:system] == nil
      params.require(:system).permit(:stage, :meta_points, :memory, :turn, :user, :die)
    end
  end
end
