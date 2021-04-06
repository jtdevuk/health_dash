class ChangeAppointmentDateToDatetime < ActiveRecord::Migration[6.0]
  def change
    change_column :records, :appointment_date, :datetime
  end
end
