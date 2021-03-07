class Medication < ApplicationRecord
  belongs_to :user
  validates :name, :description, presence: true

  def supply(med)
    "#{med.remaining / med.dose} days"
  end
end
