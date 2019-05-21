class User < ApplicationRecord
  has_many :parties, inverse_of: 'host', foreign_key: 'host_id'
  has_many :invitations, foreign_key: 'guest_id'
  has_secure_password

  validates :name, presence: true
end
