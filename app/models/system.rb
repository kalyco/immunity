class System < ActiveRecord::Base
	belongs_to :user
	has_many :viri
	has_many :cells
	has_one :stage

	validates_presence_of :user
end
