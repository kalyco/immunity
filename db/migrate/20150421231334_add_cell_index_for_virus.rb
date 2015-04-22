class AddCellIndexForVirus < ActiveRecord::Migration
  def change
    add_column :viri, :cell_id, :integer
  end
end
