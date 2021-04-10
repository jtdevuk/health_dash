class AddCoordinatesToAppointments < ActiveRecord::Migration[6.0]
  def change
    add_column :appointments, :latitude, :float
    add_column :appointments, :longiitude, :float
  end
end
