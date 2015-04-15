class CreateSystems < ActiveRecord::Migration
  def change
    create_table :systems do |t|
    	t.integer :meta_points, default: 30
    	t.integer :user_id, null: false
    	t.integer :memory, default: 0
    	t.timestamps
    end
    add_index :systems, :user_id, unique: true
  end
end
