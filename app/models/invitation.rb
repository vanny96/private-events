class Invitation < ApplicationRecord
  belongs_to :party
  belongs_to :guest, class_name: 'User'

  validates :guest, presence: true
  validates :party, presence: true
end
