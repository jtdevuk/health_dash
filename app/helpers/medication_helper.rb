module MedicationHelper
 
def calc_remaining(med)
  med_taken = med.dose * days_passed(med)
  med.remaining < med_taken ? med.remaining : med.remaining -= med_taken 
end

def calc_supply(med)
  med.remaining > med.dose ? med.remaining / med.dose : 0
  # if remaining <= 7 && med.low_warning_sent == false
  #   MedicationMailer.with(user: current_user, med: med).medication_low.deliver_now
  #   med.update(low_warning_sent: true)
  # end
  # remaining
end

private

def days_passed(med)
  last_updated = med.updated_at.to_date
  days_passed = (Date.today - last_updated).to_i
end

end
