class Party < ApplicationRecord
  belongs_to :host, class_name: 'User'
  has_many :invitations
  has_many :guests, through: :invitations

  validates :host_id, presence: true
  validates :name, presence: true
  validates :location, presence: true
  validates :date, presence: true

  def Party.to_come
    where("date > ?", Time.now).order(:date)
  end

  def Party.gone 
    where("date < ?", Time.now).order(date: :desc)
  end
end
