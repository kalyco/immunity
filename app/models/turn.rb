class Turn < ActiveRecord::Base
  belongs_to :system
  belongs_to :viri
  has_one :chart, through: :system

  PICK = ["virus", "system"]

  def first
    if self.player == nil && self.system.stage.name == "adaptive"
      self.player = PICK.sample
      if system?
        award_meta_points
      end
      self.save!
    end
    self.player
  end

  def total
    turn = 1
    total = []
    self.order.times do
      total << turn
      turn += 1
    end
    total
  end

  def next_turn
    if system? == true
      self.player = PICK[0]
    else
      self.player = PICK[1]
      award_meta_points
    end
    self.save!
  end

  def extra_turn
    award_meta_points
  end

  def system?
    if self.player == "system"
      true
    else false
    end
  end

  protected

  def award_meta_points
    self.system.meta_points += 10
    self.system.save
  end
end
