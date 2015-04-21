class AddVolalilityToCells < ActiveRecord::Migration
  def change
    add_column :cells, :volatile, :boolean
  end
end
