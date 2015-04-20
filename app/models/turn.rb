class Turn < ActiveRecord::Base
  belongs_to :system
  belongs_to :viri

  PICK = ["virus", "system"]

  def first
    self.player = PICK.sample
  end

  def next
    if self.player == PICK[0]
      self.player = PICK[1]
    else self.player = PICK[0]
    end
  end
end

