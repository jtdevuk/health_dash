# frozen_string_literal: true

class MedicationsController < ApplicationController
  before_action :set_medication, only: %i[edit update destroy supply]

  def index
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
      render 'new'
    end
  end

  def edit; end

  def destroy
    @med.destroy
    redirect_to medications_path
  end

  def update
    if @med.update(medication_params)
      current_user.medications << @med
      @med.update(low_warning_sent: false)
      redirect_to medications_path
    else
      render 'edit'
    end
  end

  private

  def set_medication
    @med = Medication.find(params[:id])
  end

  def medication_params
    params.require(:medication).permit(:name, :description, :remaining, :user_id, :dose, :low_warning_sent)
  end
end
