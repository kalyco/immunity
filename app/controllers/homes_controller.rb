class HomesController < ApplicationController
  before_action :authenticate_user!

  def index
    @system = System.new
    if System.exists?(user_id: current_user.id)
      @cur_sys = System.find_by(user_id: current_user.id)
    end
  end
end
