class AddLowWarningSentToMedications < ActiveRecord::Migration[6.0]
  def change
    add_column :medications, :low_warning_sent, :boolean, default: false
  end
end
