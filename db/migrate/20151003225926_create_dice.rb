class CreateDice < ActiveRecord::Migration
  def change
    create_table :dice do |t|
      t.references :cells
      t.references :viri
      t.boolean :win
      t.integer :roll

      t.timestamps
    end
  end
end
