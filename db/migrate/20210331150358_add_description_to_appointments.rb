# frozen_string_literal: true

class AddDescriptionToAppointments < ActiveRecord::Migration[6.0]
  def change
    add_column :appointments, :description, :text
  end
end
