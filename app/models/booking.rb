class Booking < ApplicationRecord
  has_many :dogs
  belongs_to :user
  validates :start_time, presence: true
  validates :end_time, presence: true
  validates :notes
end
