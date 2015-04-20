class AddStageOrder < ActiveRecord::Migration
  def change
    add_column :systems, :stage_order, :integer, default: 0
    add_column :viri, :stage_order, :integer, default: 0
  end
end
