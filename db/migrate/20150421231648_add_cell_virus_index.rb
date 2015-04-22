class AddCellVirusIndex < ActiveRecord::Migration
  def change
    add_index :cells, :virus_id, unique: true
    add_index :viri, :cell_id, unique: true
  end
end
