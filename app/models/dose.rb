class Dose < ApplicationRecord
  has_many :medication_doses
  has_many :medications, through: :medication_doses
end
