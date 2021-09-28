# frozen_string_literal: true

class RemoveRecordAndCoordinatesFromAppointments < ActiveRecord::Migration[6.0]
  def change
    remove_reference :appointments, :record, index: true
    remove_column :appointments, :latitude
    remove_column :appointments, :longitude
  end
end
