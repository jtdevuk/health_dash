class MedicationMailer < ApplicationMailer
  default from: 'admin@healthdash.com'

  def medication_low
    @user = params[:user]
    @low_med  = params[:low_med]
    mail(to: 'j.tweeddale@outlook.com', subject: 'You only have 7 days of medication left')
  end
end
