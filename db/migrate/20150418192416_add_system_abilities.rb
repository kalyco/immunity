class AddSystemAbilities < ActiveRecord::Migration
  def change
    add_column :systems, :balance_points, :integer, default: 0
    add_column :systems, :differentiation, :integer, default: 0
    add_column :systems, :apoptosis, :integer, default: 0
    add_column :systems, :pyrogenation, :integer, default: 0
  end
end
