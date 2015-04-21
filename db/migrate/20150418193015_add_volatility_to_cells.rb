class AddVolatilityToCells < ActiveRecord::Migration
  def up
    add_column :cells, :volatility, :boolean
  end
  def down
    remove_column :cells, :volaility
  end
end
