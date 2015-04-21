class System < ActiveRecord::Base
	belongs_to :user
  has_one :turn, dependent: :destroy
	has_many :viri, dependent: :destroy
	has_many :cells, dependent: :destroy
	has_one :stage, dependent: :destroy

  validates :meta_points, numericality: { greater_than_or_equal_to: 0 }
	validates_presence_of :user

  def meta_score
    if self.stage.name == "innate"
      points = "you have #{self.meta_points} meta points to spend."
      stage = Stage.find_by(system: self)
      total = stage.cytokines + stage.phagocytes + stage.macromolecules
      self.meta_points -= (total)
      self.save
      end
      if self.meta_points > 0 || total != 30
        reset
      end
    return points
  end

  def pyro_turn
    if self.pyrogenation >= 10
      self.next_turn = "system"
      self.pyrogenation -= 10
      self.save
    end
  end

  def balance_score
    if self.stage.cytokines != 0
    end
  end

  def reset
    self.meta_points = 30
    self.stage.cytokines = 0
    self.stage.macromolecules = 0
    self.stage.phagocytes = 0
    self.save
    self.stage.save
  end

  def cell_creation(num)
    system = System.find(params[:id])
    num.times do
      Cell.create(system: system)
    end
  end
end
