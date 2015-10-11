class CreateDice < ActiveRecord::Migration
  def change
    create_table :dice do |t|
      t.references :cell
      t.references :virus
      t.boolean :win
      t.integer :roll

      t.timestamps
    end
  end
end
