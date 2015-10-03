class Dice < ActiveRecord::Base
  belongs_to :cell, polymorphic: true
  belongs_to :virus, polymorphic: true
  
  validates_length_of :roll, minimum: 1, maximum: 6
end