class Medication < ApplicationRecord
  has_many :user_medications, :dependent => :destroy
  has_many :users, through: :user_medications
  has_many :medication_doses
  has_many :doses, through: :medication_doses
  validates :name, :description, presence: true
end
