class System < ActiveRecord::Base
	belongs_to :user
	has_many :viri
	has_many :cells
	has_one :stage

	validates_presence_of :user

  def meta_score
    if meta_points > 0
      stage = Stage.find_by(system: self)
      self.meta_points = 30
      self.meta_points -= (stage.cytokines + stage.phagocytes + stage.macromolecules)
      save
    end
    self.meta_points
  end

  def continue
    binding.pry
    stage = Stage.find(self)
    stage.name = "adaptive"
  end

  def reset
    self.meta_points = 30
    self.stage.cytokines = 0
    self.stage.macromolecules = 0
    self.stage.phagocytes = 0
  end
end
