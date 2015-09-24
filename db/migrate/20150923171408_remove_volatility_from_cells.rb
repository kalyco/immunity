class RemoveVolatilityFromCells < ActiveRecord::Migration
  def change
    remove_column :cells, :volatility, :boolean
  end
end
