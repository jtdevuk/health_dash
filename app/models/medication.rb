class Medication < ApplicationRecord
  belongs_to :user
  validates :name, :description, presence: true

  def supply(med)
    last_updated = med.updated_at.to_date
    today = Date.today
    days_passed = (today - last_updated).to_i + 1
    med_used = med.dose * days_passed
    remaining = med.remaining / med_used
    remaining > 1 ? "#{remaining} days" : "#{remaining} day"
  end
end
