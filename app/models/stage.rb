class Stage < ActiveRecord::Base
	belongs_to :system

	validates_presence_of :system
	validates :cytokines, numericality: max: 30
	validates :phagocytes, numericality: max: 30
	validates :macromolecules, numericality: max: 30
end
