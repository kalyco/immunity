class Cell < ActiveRecord::Base
	ANTIBODY = 0
	ANTIGEN = 1

	STATUSES = {
		ANTIBODY => "antibody",
		ANTIGEN => "antigen"
	}

  def split
    rando = { 0 => true, 1 => false}
    self.volatile == rando.sample
    self.save
  end

	belongs_to :system
  has_one :virus

	validates_presence_of :system

  def status_name
    STATUSES[status]
  end
end
