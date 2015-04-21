class CreateTurns < ActiveRecord::Migration
  def change
    create_table :turns do |t|
      t.integer :system_id, null: false
      t.integer :order, default: 1
      t.string :player

      t.timestamps
    end
  end
end
