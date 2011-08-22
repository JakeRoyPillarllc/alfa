class AddSortOrderToMembers < ActiveRecord::Migration
  def self.up
    add_column :members, :sort_order, :integer
  end
  def self.down
    remove_column :members, :sort_order
  end
end
