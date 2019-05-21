class AddIndexToInvitation < ActiveRecord::Migration[5.2]
  def change
    add_index :invitations, [:guest_id, :party_id], unique: true
  end
end
