class Invitation < ApplicationRecord
  belongs_to :party
  belongs_to :guest, class_name: 'User'

  validates :guest, presence: true
  validates :party, presence: true
  validate :already_invited, on: :create

  def already_invited
    guests = Invitation.where("party_id = ?", party_id).pluck(:guest_id)
    if guests.any? guest_id
      errors[:guest_id] << 'Guest already invited'
    end
  end
end
