class RenameAppointmentsDateToStartTime < ActiveRecord::Migration[6.0]
  def change
    rename_column :appointments, :date, :start_time
  end
end
