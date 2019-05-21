class User < ApplicationRecord
  has_many :parties, inverse_of: 'host', foreign_key: 'host_id'
  has_many :invitations, foreign_key: 'guest_id'
  has_many :parties_as_guest, through: :invitations, source: 'party'
  has_secure_password

  validates :name, presence: true
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
  validates :email, presence: true, format: {with: VALID_EMAIL_REGEX}, uniqueness: true
end
