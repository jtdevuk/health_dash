module MedicationHelper
 
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
