class System < ActiveRecord::Base
	belongs_to :user
  has_one :turn
	has_many :viri
	has_many :cells
	has_one :stage

  validates :meta_points, numericality: { greater_than_or_equal_to: 0 }
	validates_presence_of :user

  def meta_score
    if self.stage.name == "adaptive"
      nil
    else
      points = "you have #{self.meta_points} meta points to spend."
      if self.meta_points == 30
        self.meta_points -= (stage.cytokines + stage.phagocytes + stage.macromolecules)
        stage = Stage.find_by(system: self)
        self.save
        if self.meta_points != 0
        end
      else
        reset
      end
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
  end

  def cell_creation(num)
    system = System.find(params[:id])
    num.times do
      Cell.create(system: system)
    end
  end
end
