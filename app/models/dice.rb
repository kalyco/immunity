class Dice < ActiveRecord::Base
  belongs_to :cell
  belongs_to :virus
  
  validates_length_of :roll, minimum: 1, maximum: 6
end