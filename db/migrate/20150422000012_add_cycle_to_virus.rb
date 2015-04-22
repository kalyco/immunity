class AddCycleToVirus < ActiveRecord::Migration
  def change
    add_column :viri, :cycle, :string
  end
end
