class AddReferencesToInvitation < ActiveRecord::Migration[5.2]
  def change
    add_reference :invitations, :guest, foreign_key: true
    add_reference :invitations, :party, foreign_key: true
  end
end
