class Appointment < ApplicationRecord
  belongs_to :user
  has_one :record
  validates :name, :location, presence: true
end
