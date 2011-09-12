class AddSortOrderToProjects < ActiveRecord::Migration
  def up
    add_column :projects, :sort_order, :integer, :default => 100
  end

  def down
    remove_column :projects, :sort_order
  end
end
