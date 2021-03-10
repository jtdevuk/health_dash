class MedicationsController < ApplicationController

  before_action :set_medication, only: [:edit, :update, :destroy, :supply]

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
      current_user.medications << @med
    else
      render "new"
    end
  end

  def edit     
  end

  def destroy
    @med.destroy
    redirect_to medications_path
  end

  def update    
    if @med.update(medication_params)
      redirect_to medications_path
      current_user.medications << @med
    else
      render "edit"
    end
  end

  private

  def set_medication
    @med = Medication.find(params[:id])
  end

  def medication_params
    params.require(:medication).permit(:name, :description, :remaining, :user_id, :dose)
  end

end