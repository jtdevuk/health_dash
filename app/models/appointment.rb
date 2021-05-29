class Appointment < ApplicationRecord
  belongs_to :user
  has_one :record
  validates :name, :location, presence: true

  def self.reminder
    User.all.each do |user|
      user.appointments.each do |app|
        date = app.start_time.to_date
        difference = (date - Date.today).to_i
        if difference <= 7
          AppointmentMailer.with(user: user, app: app).appointment_reminder.deliver_now
        end
      end
    end
  end

  def address
    location
  end
end
