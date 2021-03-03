class MedicationsController < ApplicationController
  def index
    @user = current_user
    @medications = current_user.medications
    @new_med = Medication.new
  end

  def new
    @med = Medication.new
  end

  def create
    @med = Medication.new(medication_params)
    @med.user_id = current_user.id

    if @med.save
      redirect_to medications_path
    else
      render "new"
    end
  end

  private

  def medication_params
    params.require(:medication).permit(:name, :description, :remaining, :user_id)
  end

end
