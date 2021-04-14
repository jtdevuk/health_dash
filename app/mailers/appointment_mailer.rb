class AppointmentMailer < ApplicationMailer
  def appointment_reminder
    @user = params[:user]
    @app = params[:app]
    mail(to: 'j.tweeddale@outlook.com', subject: 'Upcoming appointment reminder')
  end
end
