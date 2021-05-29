class ChangeDateInRecords < ActiveRecord::Migration[6.0]
  def change
    change_column :records, :appointment_date, :date
    rename_column :records, :appointment_date, :date
  end
end
