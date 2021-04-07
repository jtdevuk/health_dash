class MedicationMailer < ApplicationMailer
  default from: 'admin@healthdash.com'

  def medication_low
    # @user = params[:user]
    # @url  = 'http://example.com/login'
    mail(to: 'j.tweeddale@outlook.com', subject: 'Your medication is low!')
  end
end
