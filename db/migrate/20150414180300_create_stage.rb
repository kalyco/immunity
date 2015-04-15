class CreateStage < ActiveRecord::Migration
  def change
    create_table :stages do |t|
    	t.integer :system_id, null: false
    	t.string :name, default: "innate"
    	t.integer :cytokines, default: 0
    	t.integer :macromolecules, default: 0		
    	t.integer :phagocytes, default: 0				

    	t.timestamps
    end
    add_index :stages, :system_id, unique: true
  end
end
