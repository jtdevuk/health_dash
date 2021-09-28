# frozen_string_literal: true

class Record < ApplicationRecord
  belongs_to :user
  has_one_attached :letter

  validates :name, :description, :date, presence: true

  scope :filter_by_category, ->(category) { where category: category }
  scope :filter_by_date, ->(start_date, end_date) { where date: start_date..end_date }

  def self.get_categories
    records = Record.all.filter { |record| !record.category.nil? && record.category != '' }
    records.map(&:category).uniq
  end
end
