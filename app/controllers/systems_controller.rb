class SystemsController < ApplicationController
  before_action :authenticate_user!
  before_action :check_innate_stage, only: :show

  def show
    @system = System.find(params[:id])
    @cells = Cell.where(system: @system)
    @viri = Virus.where(system: @system)
    @stage = @system.stage
    @first = @system.turn.first
  end

  def new
    @system = System.new
  end

  def create
    if user_system == nil
      @system = System.new
      @system.user = current_user
      if @system.save
        100.times do
          Cell.create(system: @system)
        end
        50.times do
          Virus.create(system: @system)
        end
        stage = Stage.create(system: @system)
        turn = Turn.create(system: @system)
        turn.save
        stage.save
        flash[:notice] = "this one's name is
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
  end

  def update
    @system = user_system
    @stage = @system.stage
      if @system.update(system_params)
        @stage.reset
        redirect_to system_path(@system)
    end
  end

  def destroy
      @system = System.find(params[:id])
      @system.destroy
      flash[:notice] = 'disease is immunodeficient. system shut down'
      redirect_to new_system_path
  end

  def user_system
    System.find_by(user: current_user)
  end

  private
  def check_innate_stage
    if params[:id]
      @system = System.find(params[:id])
      redirect_to system_innates_path(@system) if @system.stage.name == "innate"
    end
  end

  def system_params
    params.require(:system).permit(:stage, :meta_points, :memory)
  end
end
