class Turn < ActiveRecord::Base
  belongs_to :system
  belongs_to :viri

  PICK = ["virus", "system"]

  def first
    if self.player == nil
      self.player = PICK.sample
      if system?
        award_meta_points
      end
      self.save!
    end
    self.player
  end

  def next_turn
    if system?
      self.player = PICK[1]
      award_meta_points
    else
      self.player = PICK[0]
    end
    self.save!
  end

  def extra_turn
    award_meta_points
  end

  def system?
    self.player == PICK[0]
  end

  protected

  def award_meta_points
    self.system.meta_points += 10
    self.system.save!
  end
end
