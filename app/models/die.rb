class Die < ActiveRecord::Base
  belongs_to :cell
  belongs_to :virus
  
  validates_length_of :roll, minimum: 1, maximum: 6, allow_blank: true

  def initialize_roll
    self.roll = 1 + rand(6)
  end
end