class AppointmentsController < ApplicationController
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
      render "new"
    end
  end

  def show
    @appointment = Appointment.find(params[:id])
  end

  def update
    @appointment = Appointment.find(params[:id])
    @appointment.update(appointment_params)
  end

  private

  def appointment_params
    params.require(:appointment).permit(:name, :location, :start_time, :record_id, :description)
  end

end
