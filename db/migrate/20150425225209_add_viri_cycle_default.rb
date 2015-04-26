class AddViriCycleDefault < ActiveRecord::Migration
  def change
    change_column :viri, :cycle, :string, default: "uninitiated"
  end
end
