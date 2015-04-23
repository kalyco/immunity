class HomesController < ApplicationController
  before_action :authenticate_user!

  def index
    if System.exists?(user_id: current_user.id)
      @system = System.find_by(user_id: current_user.id)
    end
  end
end
