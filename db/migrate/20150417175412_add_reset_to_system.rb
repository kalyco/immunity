class AddResetToSystem < ActiveRecord::Migration
  def change
    add_column :systems, :reset
  end
end
