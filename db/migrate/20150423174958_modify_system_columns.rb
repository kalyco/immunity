class ModifySystemColumns < ActiveRecord::Migration
  def change
    change_column :systems, :pyrogenation, :integer, default: 0
    change_column :systems, :apoptosis, :integer, default: 0
  end
end
