class AddReminderSentToAppointments < ActiveRecord::Migration[6.0]
  def change
    add_column :appointments, :reminder_sent, :boolean
  end
end
