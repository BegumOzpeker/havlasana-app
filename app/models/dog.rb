class Dog < ApplicationRecord
  has_many :bookings
  belongs_to :user
  validates :dog_name, presence: true
  validates :description
  validates :breed, presence: true
end
