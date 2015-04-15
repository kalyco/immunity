class CreateCells < ActiveRecord::Migration
  def change
    create_table :cells do |t|
    	t.integer :system_id
    	t.string :status, default: "antibody"

	    t.timestamps
    end
  end
end
