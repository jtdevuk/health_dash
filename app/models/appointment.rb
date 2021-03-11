class Appointment < ApplicationRecord
  belongs_to :user
  validates :name, :location, presence: true
end
