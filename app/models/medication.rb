class Medication < ApplicationRecord
  belongs_to :user
  validates :name, :description, presence: true
  validates :remaining, :dose, numericality: { greater_than_or_equal_to: 0 }   
end
