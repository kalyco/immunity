class Stage < ActiveRecord::Base
	belongs_to :system

	validates_presence_of :system

	def add_points(cyto, macro, phago)
		if self.system.meta_points > 0
		  self.cytokines += cyto
		  self.macromolecules += macro
		  self.phagocytes += phago
		  self.system.meta_points -= (cyto + macro + phago)
		  self.save
		  self.system.save
		end
	end
end
