class MedicationDose < ApplicationRecord
  belongs_to :medication
  belongs_to :dose
end
