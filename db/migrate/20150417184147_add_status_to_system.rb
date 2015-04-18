class AddStatusToSystem < ActiveRecord::Migration
  def change
    add_column :systems, :status, :string, default: "uncompromised"
  end
end
