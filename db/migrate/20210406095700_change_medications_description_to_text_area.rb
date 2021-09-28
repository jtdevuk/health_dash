# frozen_string_literal: true

class ChangeMedicationsDescriptionToTextArea < ActiveRecord::Migration[6.0]
  def change
    change_column :medications, :description, :text
  end
end
