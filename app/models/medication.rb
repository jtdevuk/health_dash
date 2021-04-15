class Medication < ApplicationRecord
  belongs_to :user
  validates :name, :description, presence: true
  validates :remaining, :dose, numericality: { greater_than_or_equal_to: 0 }

  def calc_supply(med)
    remaining = med.remaining / med.dose
    # if remaining <= 7 && med.low_warning_sent == false
    #   MedicationMailer.with(user: current_user, med: med).medication_low.deliver_later
    #   med.update(low_warning_sent: true)
    # end
    # remaining
  end

  def self.check_low_meds
    User.all.each do |user|
      user.medications.each do |med|
        remaining = med.remaining / med.dose
        if remaining <= 7 && med.low_warning_sent == false
          MedicationMailer.with(user: user, med: med).medication_low.deliver_later
          med.update(low_warning_sent: true)
        end
      end
    end
  end
end
