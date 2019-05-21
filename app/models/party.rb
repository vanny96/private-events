class Party < ApplicationRecord
  belongs_to :host, class_name: 'User'
  has_many :invitations
  has_many :guests, through: :invitations

  validates :host_id, presence: true
  validates :name, presence: true
  validates :location, presence: true
end
