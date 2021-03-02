class Medication < ApplicationRecord
  has_many :user_medications
  has_many :users, through: :user_medications
  validates :name, :description, presence: true
end
