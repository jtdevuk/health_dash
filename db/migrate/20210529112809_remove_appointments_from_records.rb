# frozen_string_literal: true

class RemoveAppointmentsFromRecords < ActiveRecord::Migration[6.0]
  def change
    remove_reference :records, :appointment, index: true
  end
end
