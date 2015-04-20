class Virus < ActiveRecord::Base
	belongs_to :system
  has_many :cells
  has_many :turns

	validates_presence_of :system

  def subjugation
    system = self.system
    subjugated = Virus.where(status: "latent")
    cells = Cell.where(system: system, status: "antibody")
      cells.each do |cell|
        if rand(3) == 1
          cell.status = "antigen"
          cell.save
        end
      end
  end

  def virus_turn
    if self.turn.order == "viri"
      self.subjugation
      self.reproduction
    end
  end
end

# based on the number of viruses, there will be an attempted subjugation of cells.
# up to 1/3rd of latent viruses can attempt to subjugate cells
# cells that are subjugated essentially become virus factories, creating latent viruses each turn
