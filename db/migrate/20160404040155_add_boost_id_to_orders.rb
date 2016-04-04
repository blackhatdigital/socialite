class AddBoostIdToOrders < ActiveRecord::Migration
  def change
    add_column :orders, :boost_id, :integer
  end
end
