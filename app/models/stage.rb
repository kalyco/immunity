class Stage < ActiveRecord::Base
	belongs_to :system

	validates_presence_of :system
	validates :cytokines, numericality: { less_than_or_equal_to: 30 }
	validates :phagocytes, numericality: { less_than_or_equal_to: 30 }
	validates :macromolecules, numericality: { less_than_or_equal_to: 30 }
end
