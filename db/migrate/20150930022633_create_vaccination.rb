class CreateVaccination < ActiveRecord::Migration
  def change
    create_table :vaccinations do |t|
      t.references :system

      t.boolean :success
    end
  end
end
