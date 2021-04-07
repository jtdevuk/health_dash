module MedicationHelper
  def calc_supply(med)
    remaining = med.remaining / med.dose
    MedicationMailer.with(user: current_user, low_med: med.name).medication_low.deliver_later if remaining <= 7
    remaining
end

def calc_remaining(med)
  med_taken = med.dose * days_passed(med)
  med.remaining -= med_taken
end

private

def days_passed(med)
  last_updated = med.updated_at.to_date
  days_passed = (Date.today - last_updated).to_i
end

end
