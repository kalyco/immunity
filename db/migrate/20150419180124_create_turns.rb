class CreateTurns < ActiveRecord::Migration
  def change
    create_table :turns do |t|
      t.string :order, default: "viri"
      t.string :phase, default: "beginning"
      t.integer :number, default: 1

      t.timestamps
    end
  end
end
