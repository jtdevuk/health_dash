class AddAppointmentRelationToRecords < ActiveRecord::Migration[6.0]
  def change    
      add_reference :records, :appointment, index: true   
  end
end
