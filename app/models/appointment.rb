# frozen_string_literal: true

class Appointment < ApplicationRecord
  belongs_to :user
  has_one_attached :letter
  validates :name, :location, :start_time, presence: true

  def self.reminder
    User.all.each do |user|
      user.appointments.each do |app|        
        AppointmentMailer.with(user: user, app: app).appointment_reminder.deliver_now if due?(app) && !app.reminder_sent
      end
    end
  end

  private

  def self.due?(app)
    date = app.start_time.to_date
    difference = (date - Date.today).to_i
    difference <= 7
  end
end
