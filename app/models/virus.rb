class Virus < ActiveRecord::Base
	belongs_to :system
  has_one :turn, through: :system
  has_one :cell

	validates_presence_of :system

  def cycle_choice
    if self.status == "latent"
      host = Cell.find_by(system: self.system, status: "antibody")
      host.virus = self
      host.save
      if host.volatile == "true"
        self.status = "lysogenic"
        host.status = "subjugated"
      else self.status = "lytic"
        host.status = "marked"
      end
    self.save
  end
end

def cycle(status)
  if self.status != "latent"
    self.stage += 1
    if self.stage_order == 1
      self.stage = "binding"
    elsif self.stage_order == 2
      self.stage = "insertion"
    end
    if self.status == "lytic"
      if self.stage_order == 3
        self.stage = "replication"
        3.times do
          Virus.create(system: self.system)
        end
      elsif self.stage_order == 4
        self.stage = "latent"
        self.cell.destroy
        self.stage_order = 0
      end
    elsif self.status == "lysogenic" && self.stage_order == 3
        self.stage = "latent"
        self.cell.status = "antigen"
        self.stage_order = 0
    end
    self.save
  end
end
end
