# frozen_string_literal: true

class AddRecordRelationToAppointments < ActiveRecord::Migration[6.0]
  def change
    add_reference :appointments, :record, index: true
  end
end
