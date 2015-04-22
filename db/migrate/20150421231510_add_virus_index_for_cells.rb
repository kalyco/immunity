class AddVirusIndexForCells < ActiveRecord::Migration
  def change
    add_column :cells, :virus_id, :integer
  end
end
