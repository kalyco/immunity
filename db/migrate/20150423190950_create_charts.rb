class CreateCharts < ActiveRecord::Migration
  def change
    create_table :charts do |t|
      t.integer :system_id
      t.integer :turn_id
    end
    add_index :charts, [:system_id, :turn_id], unique: true
  end
end
