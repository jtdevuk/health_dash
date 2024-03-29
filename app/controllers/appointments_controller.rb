# frozen_string_literal: true

class AppointmentsController < ApplicationController
  before_action :set_appointment, only: %i[show edit update destroy]
  def index
    @new_appointment = Appointment.new
    start_date = params.fetch(:start_date, Date.today).to_date
    @appointments = Appointment.where(start_time: start_date.beginning_of_month.beginning_of_week..start_date.end_of_month.end_of_week)
  end

  def new
    @appointment = Appointment.new
  end

  def create
    @appointment = Appointment.new(appointment_params)
    @appointment.user_id = current_user.id

    if @appointment.save
      redirect_to appointments_path
    else
      render 'new'
    end
  end

  def show; end

  def edit
    @appointment.start_time = @appointment.start_time.strftime('%d-%m-%Y %H:%M')
  end

  def update
    if @appointment.update(appointment_params)
      redirect_to appointment_path(@appointment)
    else
      render 'edit'
    end
  end

  def destroy
    @appointment.destroy
    redirect_to appointments_path
  end

  def letter
    @appointment = Appointment.find(params[:appointment_id])
    @letter = @appointment.letter
  end

  private

  def set_appointment
    @appointment = Appointment.find(params[:id])
  end

  def appointment_params
    params.require(:appointment).permit(:name, :start_time, :letter, :description, :location)
  end
end
