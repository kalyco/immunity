class Virus < ActiveRecord::Base
	belongs_to :system
  has_one :turn, through: :system
  has_one :cell

	validates_presence_of :system

  def cycle_choice
    if self.status == "latent"
      host = Cell.find_by(system: self.system, status: "antibody", virus_id: nil)
      unless host == nil
        host.virus = self
        host.save
      end
      unless host == nil
        if host.volatile == "true"
          self.status = "lysogenic"
          host.status = "subjugated"
        else self.status = "lytic"
          host.status = "marked"
        end
      end
    self.save
    end
  end

  LYTIC_CYCLE = {
    0 => "latent",
    1 => "binding",
    2 => "DNA insertion",
    3 => "replicating",
    4 => "destroying cell"
  }

  LYSOGENIC_CYCLE = {
    0 => "latent",
    1 => "binding",
    2 => "subjugating",
    3 => "replicating"
  }

  def cycle_method
    unless self.cell == nil
      self.cell.split
      if self.cell.volatile
        self.cycle = "lysogenic"
        self.stage_order += 1
        if self.stage_order == 3
          self.cell.status = "antigen"
          self.stage_order = 0
        end
        self.status = LYSOGENIC_CYCLE[self.stage_order]
      else
        self.cycle = "lytic"
        self.stage_order += 1
        if self.stage_order == 4
          3.times do
            Virus.create(system: self.system)
          end
          self.stage_order = 0
        end
      end
      self.status = LYTIC_CYCLE[self.stage_order]
      self.save
      self.cell.save
    end
  end

  def self.next_cycle
    viri = self.all
    viri.each { |virus| virus.cycle_method }
  end
end

