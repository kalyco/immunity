class CreateViri < ActiveRecord::Migration
  def change
    create_table :viri do |t|
    	t.integer :system_id
			t.string :status, default: "latent"

	    t.timestamps
    end
  end
end
