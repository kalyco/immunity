class Cell < ActiveRecord::Base
  belongs_to :system
  has_one :virus
  has_one :dice
  validates_presence_of :system

	ANTIBODY = 0
	ANTIGEN = 1

	STATUSES = {
		ANTIBODY => "antibody",
		ANTIGEN => "antigen"
	}

  def split
    rando = [true, false]
    self.volatile = rando.sample
    self.save
  end

  def status_name
    STATUSES[status]
  end
end
