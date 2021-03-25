class Record < ApplicationRecord
  belongs_to :user 
  has_one :appointment
  has_one_attached :letter

  validates :name, :description, presence: true

  scope :filter_by_category, -> (category) { where category: category }
  scope :filter_by_date, -> (start_date, end_date) { where appointment_date: start_date..end_date}

  def self.get_categories
    Record.all.map { |record| record.category }
  end  
end
