# frozen_string_literal: true

class AppointmentMailer < ApplicationMailer
  def appointment_reminder
    @user = params[:user]
    @app = params[:app]
    check_for_record
    mail(to: 'j.tweeddale@outlook.com', subject: 'Upcoming appointment reminder')
  end

  private

  def check_for_record
    return unless params[:app].record.present? && params[:app].record.letter.attached?

    @attachment = params[:app].record.letter
    attachments['Appointment.pdf'] = {
      mime_type: @attachment.blob.content_type,
      content: @attachment.blob.download
    }
  end
end
