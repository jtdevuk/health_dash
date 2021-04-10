class Appointment < ApplicationRecord
  belongs_to :user
  has_one :record
  validates :name, :location, presence: true
  geocoded_by :address
  after_validation :geocode  

  def address
    location
  end
end
