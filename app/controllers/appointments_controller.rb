class AppointmentsController < ApplicationController
  def index
    @new_appointment = Appointment.new
    @appointments = Appointment.all
  end

  def create
    @appointment = Appointment.new(appointment_params)
    @appointment.user_id = current_user.id

    if @appointment.save
      redirect_to appointments_path
    else
      render appointments_path
    end
  end

  private

  def appointment_params
    params.require(:appointment).permit(:name, :location, :date)
  end

end
