# frozen_string_literal: true

class AppointmentMailer < ApplicationMailer
  def appointment_reminder
    @user = params[:user]
    @app = params[:app]
    attach_letter
    mail(to: 'j.tweeddale@outlook.com', subject: 'Upcoming appointment reminder')
    @app.reminder_sent!
  end

  private

  def attach_letter
    return unless params[:app].letter.attached?

    @attachment = params[:app].letter
    attachments['Appointment.pdf'] = {
      mime_type: @attachment.blob.content_type,
      content: @attachment.blob.download
    }
  end
end
