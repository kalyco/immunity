class SystemsController < ApplicationController
  before_action :authenticate_user!

  def show
    @system = System.find(params[:id])
    @cells = Cell.where(system: @system)
    @viri = Virus.where(system: @system)
    @stage = @system.stage
  end

  def new
    @system = System.new
  end

  def create
    @system = System.new
    @system.user = current_user
    if @system.save
      100.times do
        Cell.create(system: @system)
      end
      100.times do
        Virus.create(system: @system)
      end
      Stage.create(system: @system)
      flash[:notice] = "this one's name is
        #{Faker::Name.first_name}. keep it safe. good luck."
      redirect_to system_path(@system)
    else
      render :new
    end
  end

  def update
    @system = user_system
  end

  def destroy
      @system = System.find(params[:id])
      @system.destroy
      flash[:notice] = 'disease is immunodeficient. system shut down'
      redirect_to "/"
  end

  def user_system
    System.find_by(user: current_user)
  end
end
