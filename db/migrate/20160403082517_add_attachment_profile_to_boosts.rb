class AddAttachmentProfileToBoosts < ActiveRecord::Migration
  def self.up
    change_table :boosts do |t|
      t.attachment :profile
    end
  end

  def self.down
    remove_attachment :boosts, :profile
  end
end
