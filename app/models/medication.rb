class Medication < ApplicationRecord
  belongs_to :user
  validates :name, :description, presence: true

  def calc_remaining(med)
    med_taken = med.dose * days_passed(med)
    med.remaining -= med_taken
  end

  def calc_supply(med)    
      remaining = med.remaining / med.dose
      case
      when remaining == 1 then "#{remaining} day"
      when remaining <= 0 then "None remaining"
      when remaining > 1 then "#{remaining} days"
      end
  end

  private

  def days_passed(med)
    last_updated = med.updated_at.to_date
    days_passed = (Date.today - last_updated).to_i
  end
end
