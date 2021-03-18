class Record < ApplicationRecord
  belongs_to :user
  has_one_attached :letter

  scope :filter_by_category, -> (category) { where category: category }

  def self.get_categories
    Record.all.map { |record| record.category }
  end
end
