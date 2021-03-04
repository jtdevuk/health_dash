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

    if @med.save
      redirect_to medications_path
      current_user.medications << @med
    else
      render "new"
    end
  end

  private

  def medication_params
    params.require(:medication).permit(:name, :description, :remaining, :user_id)
  end

end
