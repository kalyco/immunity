class System < ActiveRecord::Base
	belongs_to :user
	has_many :viri
	has_many :cells
	has_one :stage

	validates_presence_of :user

  def meta_score
    if self.system.meta_points > 0
      self.cytokines += cyto
      self.macromolecules += macro
      self.phagocytes += phago
      self.system.meta_points -= (cyto + macro + phago)
      self.save
      self.system.save
    end
    self.meta_points
  end

  def reset
    self.meta_points = 30
    self.stage.cytokines = 0
    self.stage.macromolecules = 0
    self.stage.phagocytes = 0
  end
end
