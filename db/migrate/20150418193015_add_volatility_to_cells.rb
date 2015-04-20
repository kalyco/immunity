class AddVolatilityToCells < ActiveRecord::Migration
  def change
    add_column :cells, :volatility, :boolean, default: false
  end
end
