class MacroMolecule < ActiveRecord::Base
	belongs_to :stage
	belongs_to :system


	validates_presence_of :stage
end
