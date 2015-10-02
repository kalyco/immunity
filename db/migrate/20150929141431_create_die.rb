class CreateDie < ActiveRecord::Migration
  def change
    create_table :dies do |t|
      t.references :cells
      t.references :viri
      t.integer :roll

      t.timestamps
    end
  end
end
