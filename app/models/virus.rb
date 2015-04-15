class Virus < ActiveRecord::Base
	belongs_to :system

	validates_presence_of :system
end
