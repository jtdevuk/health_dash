class AppointmentMailer < ApplicationMailer
  def appointment_reminder
    @user = params[:user]
    @app = params[:app]
    if params[:app].record.present? && params[:app].record.letter.attached?
      @attachment = params[:app].record.letter    
      attachments['Appointment.pdf'] = {
      mime_type: @attachment.blob.content_type,
      content: @attachment.blob.download
      }
    end
    mail(to: 'j.tweeddale@outlook.com', subject: 'Upcoming appointment reminder')
  end
end
