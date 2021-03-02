class MedicationController < ApplicationController
  def overview
    @user = current_user
    @medications = current_user.medications
    @new_med = Medication.new
  end
end
