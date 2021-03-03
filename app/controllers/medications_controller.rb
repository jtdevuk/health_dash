class MedicationsController < ApplicationController
  def index
    @user = current_user
    @medications = current_user.medications
    @new_med = Medication.new
  end

  def new
    @med = Medication.new
  end
end
