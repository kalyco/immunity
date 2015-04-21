class Turn < ActiveRecord::Base
  belongs_to :system
  belongs_to :viri

  PICK = ["virus", "system"]

  def first
    if self.player == nil
      self.player = PICK.sample
      if self.player == "system"
        self.system.meta_points = 10
        self.save
      end
    end
    self.player
  end

  def next_turn
    if self.player == PICK[0]
      self.player = PICK[1]
      self.system.meta_points = 10
      self.save
    else self.player = PICK[0]
    end
  end

  def extra_turn
    next_turn
    next_turn
  end
end
