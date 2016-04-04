class AddUserIdToBoosts < ActiveRecord::Migration
  def change
    add_column :boosts, :user_id, :integer
  end
end
